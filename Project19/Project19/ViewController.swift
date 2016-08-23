//
//  ViewController.swift
//  Project19
//
//  Created by Jeffrey Eng on 8/22/16.
//  Copyright © 2016 Jeffrey Eng. All rights reserved.
//

import MapKit
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let london = Capital(title: "London", info: "Home to the 2012 Summer Olympics.", coordinate: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275))
        let oslo = Capital(title: "Oslo", info: "Founded over a thousand years ago.", coordinate: CLLocationCoordinate2D(latitude: 59.95, longitude: 10.75))
        let paris = Capital(title: "Paris", info: "Often called the City of Light.", coordinate: CLLocationCoordinate2D(latitude: 48.8567, longitude: 2.3508))
        let rome = Capital(title: "Rome", info: "Has a whole country inside it.", coordinate: CLLocationCoordinate2D(latitude: 41.9, longitude: 12.5))
        let washington = Capital(title: "Washington, D.C.", info: "Named after George himself.", coordinate: CLLocationCoordinate2D(latitude: 38.895111, longitude: -77.036667))
        
        mapView.addAnnotations([london, oslo, paris, rome, washington])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

