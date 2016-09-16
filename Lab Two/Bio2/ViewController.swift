//
//  ViewController.swift
//  Bio2
//
//  Created by Andrew Taylor-Shaut on 9/8/16.
//  Copyright © 2016 Andrew Taylor-Shaut. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var imageControl: UISegmentedControl!
    @IBOutlet weak var titleSwitch: UISwitch!
    @IBOutlet weak var fontSizeLabel: UILabel!
    
    func updateImage () {
        if imageControl.selectedSegmentIndex == 0 {
            name.text="Lurking in the woods"
            image.image = UIImage (named: "Nature")
        }
        else if imageControl.selectedSegmentIndex==1{
            name.text = "Meditating in the city"
            image.image = UIImage (named : "City")
        }
    }
    
    func updateCaps () {
        if titleSwitch.on {
            name.text=name.text?.uppercaseString
        }
        else {
            name.text=name.text?.capitalizedString
        }
    }
    
    @IBAction func changeInfo(sender: UISegmentedControl) {
        updateImage()
        updateCaps()
    }
    @IBAction func theSwitch(sender: UISwitch) {
        if titleSwitch.on {
            name.text=name.text?.uppercaseString
        }
        else {
            name.text=name.text?.capitalizedString
        }
    }
    
    @IBAction func changeFontSize(sender: UISlider) {
        let fontSize=sender.value //float
        fontSizeLabel.text=String(format: "%.0f", fontSize) //convert float to String
        let fontSizeCGFloat=CGFloat (fontSize) //convert float to CGFloat
        name.font=UIFont.systemFontOfSize(fontSizeCGFloat)
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

