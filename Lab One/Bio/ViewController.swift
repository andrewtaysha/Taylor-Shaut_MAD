//
//  ViewController.swift
//  Bio
//
//  Created by Andrew Taylor-Shaut on 9/6/16.
//  Copyright © 2016 Andrew Taylor-Shaut. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var artImage: UIImageView!

    @IBOutlet weak var desc: UILabel!
    

    @IBAction func chooseArt(sender: UIButton) {
        if sender.currentTitle=="Nature" {
            artImage.image=UIImage (named: "Nature.png")
            desc.text="getting lost in the woods"
        }
        else if sender.currentTitle=="City" {
            artImage.image=UIImage (named: "City.png")
            desc.text="meditating in the streets"
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

