//
//  Capital.swift
//  Project19
//
//  Created by Jeffrey Eng on 8/22/16.
//  Copyright © 2016 Jeffrey Eng. All rights reserved.
//

import MapKit
import UIKit

class Capital: NSObject, MKAnnotation {
   
    // Properties
    var title: String?
    var info: String
    var coordinate: CLLocationCoordinate2D
    
    // Create basic initializer
    init(title: String, info: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.info = info
        self.coordinate = coordinate
    }
}
