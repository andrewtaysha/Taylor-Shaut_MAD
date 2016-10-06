//
//  ViewController.swift
//  Contact
//
//  Created by Andrew Taylor-Shaut on 10/6/16.
//  Copyright © 2016 Andrew Taylor-Shaut. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var user=Contact()
    
    @IBAction func unwindSegue (segue:UIStoryboardSegue){
        firstNameLabel.text=user.conFirst
        lastNameLabel.text=user.conLast
        numberLabel.text=user.conNumber
    }
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == ""{
            var scene2ViewController = segue.destinationViewController as! ViewController
            if editFirst.text.isEmpty == false{
                scene2ViewController.user.conFirst=editFirst.text
            }
            if editLast.text.isEmpty == false{
                scene2ViewController.user.conLast=editLast.text
            }
            if editNumber.text.isEmpty == false{
                scene2ViewController.user.conNumber=editNumber.text
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

