//
//  Scene2ViewController.swift
//  AfoumMobile
//
//  Created by Julia Greenberg on 3/2/19.
//  Copyright © 2019 Afuom. All rights reserved.
//

import UIKit
import MapKit

class Scene2ViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let item = Item(title: "King David Kalakaua",
                        locationName: "Waikiki Gateway Park",
                        discipline: "Sculpture",
                        coordinate: CLLocationCoordinate2D(latitude: 42, longitude: -74))
        mapView.addAnnotation(item)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
