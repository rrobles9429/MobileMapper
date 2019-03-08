//
//  ViewController.swift
//  MobileMapper
//
//  Created by Rebecca Robles on 3/6/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    let locationManager = CLLocationManager()
    var currentLocation: CLLocation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.requestWhenInUseAuthorization()
        mapView.showsUserLocation = true
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
       
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        currentLocation = locations[0]
        print(currentLocation)
    }
    @IBAction func whenZoomButtonPressed(_ sender: Any) {
        
    }
    @IBAction func whenSearchButtonPressed(_ sender: Any) {
        
    }
    
}

