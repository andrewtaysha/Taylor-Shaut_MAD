//
//  ViewController.swift
//  Map
//
//  Created by Andrew Taylor-Shaut on 10/13/16.
//  Copyright © 2016 Andrew Taylor-Shaut. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    var locationManager = CLLocationManager ()
    
    func locationManager (manager: CLLocationManager!, didUpdateLocations location: [CLLocation]) {
        let span = MKCoordinateSpanMake (0.05, 0.05)
        let region = MKCoordinateRegionMake (manager.location!.coordinate, span)
        mapView.setRegion (region, animated: true)
    }
    
    func locationManager (manager: CLLocationManager!, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        print ("changed auth")
        if status==CLAuthorizationStatus.AuthorizedWhenInUse {
            locationManager.startUpdatingLocation()
        }
    }
    
    func locationManager(manager: CLLocationManager!, didFailWithError error: NSError!) {
        var errorType=String()
        if let clError=CLError(rawValue: error.code) {
            if clError == .Denied {
                errorType="access denied"
                let alert=UIAlertController(title: "Error", message: errorType, preferredStyle: UIAlertControllerStyle.Alert)
                let okAction:UIAlertAction=UIAlertAction(title: "OK",style:UIAlertActionStyle.Default, handler:nil)
                alert.addAction (okAction)
                presentViewController (alert, animated: true, completion: nil)
            }
        }
    }
    
    override func viewDidLoad() {
        mapView.mapType=MKMapType.Hybrid
            var status = CLLocationManager.authorizationStatus()
        if status==CLAuthorizationStatus.NotDetermined{
            locationManager.requestWhenInUseAuthorization()
        }
            locationManager.delegate=self
            locationManager.desiredAccuracy=kCLLocationAccuracyBest
            locationManager.distanceFilter=kCLDistanceFilterNone
            mapView.showsUserLocation=true
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

