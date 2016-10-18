//
//  ViewController.swift
//  Gestures
//
//  Created by Andrew Taylor-Shaut on 10/6/16.
//  Copyright © 2016 Andrew Taylor-Shaut. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UIGestureRecognizerDelegate {
    
    func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWithGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }

    @IBAction func handlePan(sender: UIPanGestureRecognizer) {
    let translation = sender.translationInView(view) //returns the new location
        sender.view!.center = CGPoint(x: sender.view!.center.x+translation.x, y: sender.view!.center.y + translation.y)
        sender.setTranslation(CGPointZero, inView: view) //set the translation back to 0
    }
    @IBAction func handlePinch(sender: UIPinchGestureRecognizer) {
   sender.view!.transform = CGAffineTransformScale(sender.view!.transform, sender.scale, sender.scale)
        sender.scale=1 //resets scale
    }
    @IBAction func handleRotate(sender: UIRotationGestureRecognizer) {
   sender.view!.transform = CGAffineTransformRotate(sender.view!.transform, sender.rotation)
        sender.rotation=0 //reset rotation
    }
    
    var audioPlayer : AVAudioPlayer?
    @IBAction func handleLong(sender: UILongPressGestureRecognizer) {

        let audioFilePath = NSBundle.mainBundle().pathForResource("Wanna Be", ofType: "mp3")
        let fileURL = NSURL (fileURLWithPath: audioFilePath!)
        audioPlayer = try? AVAudioPlayer(contentsOfURL: fileURL)
        if audioPlayer != nil {
            audioPlayer!.play()
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

