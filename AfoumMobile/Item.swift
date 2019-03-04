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
    let name: String?
    let bio: String
    let longitude: CLLocationDegrees
    let latitude: CLLocationDegrees
    let coordinate: CLLocationCoordinate2D
    
    init(name: String, bio: String, longitude: CLLocationDegrees, latitude: CLLocationDegrees, coordinate: CLLocationCoordinate2D) {
        self.name = name
        self.bio = bio
        self.longitude = longitude
        self.latitude = latitude
        self.coordinate = coordinate
        
        super.init()
    }
    
    var subtitle: String? {
        return name
    }
    /*
    private func setupItemAnnotationView(for annotation: Item, on mapView: MKMapView) -> MKAnnotationView {
        let reuseIdentifier = NSStringFromClass(Item.self)
        let flagAnnotationView = mapView.dequeueReusableAnnotationView(withIdentifier: reuseIdentifier, for: annotation)
        
        flagAnnotationView.canShowCallout = true
        
        // Provide the annotation view's image.
        let image = UIImage.init(ciImage: <#T##CIImage#>)
        flagAnnotationView.image = image
        
        // Provide the left image icon for the annotation.
        flagAnnotationView.leftCalloutAccessoryView = UIImageView(image: #imageLiteral(resourceName: "sf_icon"))
        
        // Offset the flag annotation so that the flag pole rests on the map coordinate.
        let offset = CGPoint(x: image.size.width / 2, y: -(image.size.height / 2) )
        flagAnnotationView.centerOffset = offset
        
        return flagAnnotationView
    }
    
}

     */}
