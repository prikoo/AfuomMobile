//
//  Item.swift
//  HonoluluArt
//
//  Created by Julia Greenberg on 3/1/19.
//  Copyright © 2019 Ray Wenderlich. All rights reserved.
//

import Foundation

import MapKit

class Item: NSObject, MKAnnotation {
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


