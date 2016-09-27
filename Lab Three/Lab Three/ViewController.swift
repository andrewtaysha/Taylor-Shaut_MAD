//
//  ViewController.swift
//  Lab Three
//
//  Created by Andrew Taylor-Shaut on 9/27/16.
//  Copyright © 2016 Andrew Taylor-Shaut. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var totalAmount: UITextField!
    @IBOutlet weak var taxPercent: UITextField!
    @IBOutlet weak var people: UITextField!
    @IBOutlet weak var taxDue: UILabel!
    @IBOutlet weak var totalDuePerPerson: UILabel!
    @IBOutlet weak var totalDue: UILabel!
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func updateTipTotals () {
        var amount:Float //check amount
        var pct:Float // tip percentage
        
        if totalAmount.text!.isEmpty{
            amount = 0.0
        }
        else {
            amount = Float(totalAmount.text!)!
        }
        if taxPercent.text!.isEmpty {
            pct = 0.0
        }
        else {
            pct = Float(taxPercent.text!)!/100
        }
        
        let numberOfPeople = Int(people.text!) // returns an optional
        let tax=amount*pct
        let total=amount+tax
        var personTotal : Float = 0.0 //specify Float so it's not a Double
        if numberOfPeople != nil {
            if numberOfPeople! > 0 {
                personTotal = total / Float(numberOfPeople!)
            }
            else {
                //create a UIAlertController object
                let alert=UIAlertController(title: "Warning", message: "There is at least 1 person", preferredStyle: UIAlertControllerStyle.Alert)
                //create a UIAlertAction object for the button
                let cancelAction=UIAlertAction(title: "Cancel", style:UIAlertActionStyle.Cancel, handler: nil)
                alert.addAction(cancelAction) //adds the alert action to the alert object
                let okAction=UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler:
                    {action in
                        self.people.text="1"
                        self.updateTipTotals()
                })
                alert.addAction(okAction)
                presentViewController(alert, animated: true, completion: nil)
            } //end else
        }
        
        //format results as currency
        let currencyFormatter = NSNumberFormatter ()
        currencyFormatter.numberStyle=NSNumberFormatterStyle.CurrencyStyle // set the number style
        taxDue.text=currencyFormatter.stringFromNumber(tax)
        totalDue.text=currencyFormatter.stringFromNumber(total)
        totalDuePerPerson.text=currencyFormatter.stringFromNumber(personTotal)
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        updateTipTotals()
    }
    
    override func viewDidLoad() {
        totalAmount.delegate=self
        taxPercent.delegate=self
        people.delegate=self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


