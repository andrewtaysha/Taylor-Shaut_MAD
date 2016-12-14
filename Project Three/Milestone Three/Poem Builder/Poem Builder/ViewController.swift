//
//  ViewController.swift
//  Poem Builder
//
//  Created by Andrew Taylor-Shaut on 12/12/16.
//  Copyright © 2016 Andrew Taylor-Shaut. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var nounOne: UITextField!
    @IBOutlet weak var adjective: UITextField!
    @IBOutlet weak var verb: UITextField!
    @IBOutlet weak var nounTwo: UITextField!
    
    @IBOutlet weak var imageChange: UIImageView!
    
    @IBOutlet weak var seasonChange: UISegmentedControl!

    @IBOutlet weak var poem: UITextView!
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func updateText(){
    
        if name.text!.isEmpty {
            //create a UIAlertController object
            let alert=UIAlertController(title: "Step One", message: "You Must Enter A Name", preferredStyle: UIAlertControllerStyle.Alert)
            //create a UIAlertAction object for the button
            let cancelAction=UIAlertAction(title: "Cancel", style:UIAlertActionStyle.Cancel, handler: nil)
            alert.addAction(cancelAction) //adds the alert action to the alert object
            let okAction=UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: {action in
                self.name.text="Joe"
            })
            alert.addAction(okAction)
            presentViewController(alert, animated: true, completion: nil)
        }
        
        if nounOne.text!.isEmpty {
            //create a UIAlertController object
            let alert=UIAlertController(title: "Step Two", message: "You Must Enter A Noun", preferredStyle: UIAlertControllerStyle.Alert)
            //create a UIAlertAction object for the button
            let cancelAction=UIAlertAction(title: "Cancel", style:UIAlertActionStyle.Cancel, handler: nil)
            alert.addAction(cancelAction) //adds the alert action to the alert object
            let okAction=UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: {action in
                self.nounOne.text="apple"
            })
            alert.addAction(okAction)
            presentViewController(alert, animated: true, completion: nil)
        }
        
        if adjective.text!.isEmpty {
            //create a UIAlertController object
            let alert=UIAlertController(title: "Step Three", message: "You Must Enter An Adjective", preferredStyle: UIAlertControllerStyle.Alert)
            //create a UIAlertAction object for the button
            let cancelAction=UIAlertAction(title: "Cancel", style:UIAlertActionStyle.Cancel, handler: nil)
            alert.addAction(cancelAction) //adds the alert action to the alert object
            let okAction=UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: {action in
                self.adjective.text="light"
            })
            alert.addAction(okAction)
            presentViewController(alert, animated: true, completion: nil)
        }

        if verb.text!.isEmpty {
            //create a UIAlertController object
            let alert=UIAlertController(title: "Step Four", message: "You Must Enter A Verb", preferredStyle: UIAlertControllerStyle.Alert)
            //create a UIAlertAction object for the button
            let cancelAction=UIAlertAction(title: "Cancel", style:UIAlertActionStyle.Cancel, handler: nil)
            alert.addAction(cancelAction) //adds the alert action to the alert object
            let okAction=UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: {action in
                self.verb.text="run"
            })
            alert.addAction(okAction)
            presentViewController(alert, animated: true, completion: nil)
        }
        
        if nounTwo.text!.isEmpty {
            //create a UIAlertController object
            let alert=UIAlertController(title: "Step Five", message: "You Must Enter A Noun", preferredStyle: UIAlertControllerStyle.Alert)
            //create a UIAlertAction object for the button
            let cancelAction=UIAlertAction(title: "Cancel", style:UIAlertActionStyle.Cancel, handler: nil)
            alert.addAction(cancelAction) //adds the alert action to the alert object
            let okAction=UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: {action in
                self.nounTwo.text="mouse"
            })
            alert.addAction(okAction)
            presentViewController(alert, animated: true, completion: nil)
        }
    }


    /*func textFieldDidEndEditing(textField: UITextField) {
        updateText()
    }*/

    @IBAction func changeSeason(sender: UISegmentedControl) {
        updateImage()
        updateText()
    }
    
    func updateImage(){
        
        if seasonChange.selectedSegmentIndex == 0 {
            poem.text = "The "+"\(nounOne.text!)"+" is "+"\(adjective.text!)"+" the sun's ablaze, it is a time of carefree days; and bees abuzz that chance to "+"\(verb.text!)"+" may see me snoozing in the "+"\(nounTwo.text!)"+". - Cecil Frances Alexander, edited by "+"\(name.text!)"
            imageChange.image=UIImage(named: "Summer")
        }
       else if seasonChange.selectedSegmentIndex == 1 {
            poem.text="The \(nounOne.text!)s are \(adjective.text!), a shower \(verb.text!)s softly down; the air is fragrant, crisp, and cool, and once again I'm stuck in a \(nounTwo.text!). - Cecil Frances Alexander, edited by \(name.text!)"
            imageChange.image=UIImage(named: "Fall")
        }
        else if seasonChange.selectedSegmentIndex == 2 {
            poem.text="The \(nounOne.text!)s are gone, the world is \(adjective.text!), the winds are wild, they \(verb.text!) and bite; the ground is thick with slush and sleet, and I can barely feel the \(nounTwo.text!). - Cecil Frances Alexander, edited by \(name.text!)"
            imageChange.image=UIImage(named: "Winter")
        }
        else if seasonChange.selectedSegmentIndex == 3 {
            poem.text="The \(nounOne.text!) are \(adjective.text!) with daffodils, a coat of clover cloaks the hills, and I must \(verb.text!) and I must sing to see the beauty of the \(nounTwo.text!). - Cecil Frances Alexander, edited by \(name.text!)"
            imageChange.image=UIImage(named: "Spring")
        }
    }
    
    
    override func viewDidLoad() {
        name.delegate=self
        nounOne.delegate=self
        adjective.delegate=self
        verb.delegate=self
        nounTwo.delegate=self
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}