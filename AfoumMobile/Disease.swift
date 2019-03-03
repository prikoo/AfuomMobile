//
//  Disease.swift
//  AfoumMobile
//
//  Created by Priscilla Koo on 3/2/19.
//  Copyright © 2019 Afuom. All rights reserved.
//

import Foundation
import MapKit

class Disease: NSObject, MKAnnotation {
    let title: String?
    let locationName: String
    let discipline: String
    let coordinate: CLLocationCoordinate2D
    
    init(title: String, locationName: String, discipline: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.locationName = locationName
        self.discipline = discipline
        self.coordinate = coordinate
        
        super.init()
    }
    
    var subtitle: String? {
        return locationName
    }
}
