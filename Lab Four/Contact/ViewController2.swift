//
//  ViewController2.swift
//  Contact
//
//  Created by Andrew Taylor-Shaut on 10/6/16.
//  Copyright © 2016 Andrew Taylor-Shaut. All rights reserved.
//

import UIKit

class ViewController2: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var editFirst: UITextField!
    @IBOutlet weak var editLast: UITextField!
    @IBOutlet weak var editNumber: UITextField!
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "Done" {
            let viewController = segue.destinationViewController as! ViewController
            if editFirst.text!.isEmpty == false{
                viewController.user.conFirst=editFirst.text
            }
            if editLast.text!.isEmpty == false{
                viewController.user.conLast=editLast.text
            }
            if editNumber.text!.isEmpty == false{
                viewController.user.conNumber=editNumber.text
            }
        }
        /*let viewController = segue.destinationViewController as! ViewController
        viewController.firstNameLabel.text = editFirst.text!
        viewController.lastNameLabel.text = editLast.text!
        viewController.numberLabel.text = editNumber.text!*/
    }
    
    override func viewDidLoad() {
        editFirst.delegate=self
        editLast.delegate=self
        editNumber.delegate=self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}