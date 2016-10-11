//
//  ViewController3.swift
//  Contact Collection
//
//  Created by Andrew Taylor-Shaut on 10/11/16.
//  Copyright © 2016 Andrew Taylor-Shaut. All rights reserved.
//

import UIKit

class ViewController3: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var editName: UITextField!
    @IBOutlet weak var editAge: UITextField!
    @IBOutlet weak var editHome: UITextField!
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
   override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "Bio Done" {
            let viewController = segue.destinationViewController as! ViewController
            if editName.text!.isEmpty == false{
                viewController.user.bioName=editName.text
        }
            if editAge.text!.isEmpty == false{
                viewController.user.bioAge=editAge.text
        }
            if editHome.text!.isEmpty == false{
                viewController.user.bioHome=editHome.text
        }
    }
}

    override func viewDidLoad() {
        editName.delegate = self
        editAge.delegate = self
        editHome.delegate = self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}