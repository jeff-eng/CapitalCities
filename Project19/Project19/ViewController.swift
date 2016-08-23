//
//  ViewController.swift
//  Project19
//
//  Created by Jeffrey Eng on 8/22/16.
//  Copyright © 2016 Jeffrey Eng. All rights reserved.
//

import MapKit
import UIKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let london = Capital(title: "London", info: "Home to the 2012 Summer Olympics.", coordinate: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275))
        let oslo = Capital(title: "Oslo", info: "Founded over a thousand years ago.", coordinate: CLLocationCoordinate2D(latitude: 59.95, longitude: 10.75))
        let paris = Capital(title: "Paris", info: "Often called the City of Light.", coordinate: CLLocationCoordinate2D(latitude: 48.8567, longitude: 2.3508))
        let rome = Capital(title: "Rome", info: "Has a whole country inside it.", coordinate: CLLocationCoordinate2D(latitude: 41.9, longitude: 12.5))
        let washington = Capital(title: "Washington, D.C.", info: "Named after George himself.", coordinate: CLLocationCoordinate2D(latitude: 38.895111, longitude: -77.036667))
        
        mapView.addAnnotations([london, oslo, paris, rome, washington])
        
        mapView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func mapView(mapView: MKMapView!, viewForAnnotation annotation: MKAnnotation!) -> MKAnnotationView! {
        
        // 1) Define a reuse identifier. This is a string that will be used to ensure we reuse annotation views as much as possible
        let identifier = "Capital"
        
        // 2) Check whether the annotation we're creating a view for is one of our Capital objects
        if annotation is Capital {
            
            // 3) Try to dequeue an annotation view from the map view's pool of unused views.
            var annotationView = mapView.dequeueReusableAnnotationViewWithIdentifier(identifier)
            
            if annotationView == nil {
                
                // 4) If it isn't able to find a reusable view, create a new one using MKPinAnnotationView and set its canShowCallout property to be true. This triggers the popup with the city name.
                annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
                annotationView?.canShowCallout = true
                
                // 5) Create a new UIButton using the built-in .DetailDisclosure type. This is a small blue "i" symbol with a circle around it.
                let btn = UIButton(type: .DetailDisclosure)
                annotationView!.rightCalloutAccessoryView = btn
            } else {
                
                // 6) If it can reuse a view, update that view to use a different annotation.
                annotationView!.annotation = annotation
            }
            
            return annotationView
        }
        
        // 7) If the annotation isn't from a capital city, it must return nil so iOS uses a default view.
        return nil
    
    }
    
    func mapView(mapView: MKMapView!, annotationView view: MKAnnotationView!, calloutAccessoryControlTapped control: UIControl!) {
        
        let capital = view.annotation as! Capital
        let placeName = capital.title
        let placeInfo = capital.info
        
        let ac = UIAlertController(title: placeName, message: placeInfo, preferredStyle: .ActionSheet)
        ac.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
        presentViewController(ac, animated: true, completion: nil)
    }
    

}

