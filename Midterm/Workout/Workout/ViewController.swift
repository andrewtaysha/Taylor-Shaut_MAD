//
//  ViewController.swift
//  Workout
//
//  Created by Andrew Taylor-Shaut on 10/13/16.
//  Copyright © 2016 Andrew Taylor-Shaut. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var workoutTime: UITextField!
    @IBOutlet weak var workoutsPerWeek: UILabel!
    @IBOutlet weak var milesMet: UILabel!
    @IBOutlet weak var caloriesBurnt: UILabel!
    @IBOutlet weak var dayWeekSwitch: UISwitch!
   
    func updateWorkoutResults () {
        var miles:Float //miles met
        var cal:Float //calories burnt
        
        if workoutTime.text!.isEmpty {
            miles = 0.0
        } else {
            miles = Float(workoutTime.text!)!/10
        }
        if workoutTime.text!.isEmpty {
            cal = 0.0
        } else {
            cal = Float(workoutTime.text!)! * 10
        }
        let workoutFormatter = NSNumberFormatter ()
        workoutFormatter.numberStyle=NSNumberFormatterStyle.DecimalStyle
        milesMet.text=workoutFormatter.stringFromNumber(miles)
        caloriesBurnt.text=workoutFormatter.stringFromNumber(cal)
        let workout = Int(workoutTime.text!)
        if workout != nil {
            if workout < 30 {
                let alert = UIAlertController(title: "Caution", message: "It is recommended to workout for at least 30 minutes every day", preferredStyle: UIAlertControllerStyle.Alert)
                let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: { action in
                    self.updateWorkoutResults()
                })
                alert.addAction(okAction)
                presentViewController(alert, animated: true, completion: nil)
            }
        }
    }
    
    @IBAction func updateWeek(sender: UISwitch) {
        //updateDayToWeek()
    }
    func updateDayToWeek() {
//        if dayWeekSwitch.on {
//            workoutTime.text=workoutsPerWeek.text*workoutsPerWeek.text
//        } else {
//            
//        }
    }
    @IBAction func changeWorkoutAmount(sender: UISlider) {
//        let workoutsPerWeek=sender.value
//        workoutsPerWeek.text=String(format: "%.0f")

    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        updateWorkoutResults()
    }

    override func viewDidLoad() {
        workoutTime.delegate=self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

