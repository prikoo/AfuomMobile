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
    let homeLocation = CLLocation(latitude: -23, longitude: -46)
    let regionRadius: CLLocationDistance = 10000

    func centerMapOnLocation(location: CLLocation)
    {
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate,
                                                  latitudinalMeters: regionRadius*20, longitudinalMeters: regionRadius*20)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.showsUserLocation = true
        centerMapOnLocation(location: homeLocation)
        
        let todoEndpoint: String = "http://23.96.12.110/api/get/allfarms"
        guard let url = URL(string: todoEndpoint) else {
            print("Error: cannot create URL")
            return
        }
        let urlRequest = URLRequest(url: url)
        let session = URLSession.shared
        let task = session.dataTask(with: urlRequest) {
            (data, response, error) in
            // check for any errors
            guard error == nil else {
                print("error calling GET on /todos/1")
                print(error!)
                return
            }
            // make sure we got data
            guard let responseData = data else {
                print("Error: did not receive data")
                return
            }
            // parse the result as JSON, since that's what the API provides
            do {
                guard let todo = try JSONSerialization.jsonObject(with: responseData, options: [])
                    as? [String: Any] else {
                        print("error trying to convert data to JSON")
                        return
                }
                // now we have the todo
                // let's just print it to prove we can access it
                
                // the todo object is a dictionary
                // so we just access the title using the "title" key
                // so check for a title and print it if we have one
                guard let farms = todo["data"] as? [[String: Any]] else {
                    print("Could not get todo title from JSON")
                    return
                }
                /*for farm in farms {
                    if let name = farm["name"] as? String {
                        if let bio = farm["bio"] as? String {
                            if let area = farm["area"] as? String {
                                print(farm["longitude"])
                                if let longitude = farm["longitude"] as? CLLocationDegrees {
                                    print(longitude)
                                    if let latitude = farm["latitude"] as? CLLocationDegrees{
                                        print(latitude)
                                        let item = Item(name: name,
                                                     bio: bio,
                                                     longitude: longitude,
                                                     latitude: latitude,
                                                     coordinate: CLLocationCoordinate2D(latitude: latitude, longitude: longitude))
                                    self.mapView.addAnnotation(item)
                                    }
                                }
                           }
                        }
                    }
                }*/
                
                for farm in farms {
                    let name = farm["name"] as? String
                    let bio = farm["bio"] as? String
                    let area = farm["area"] as? String
                    let longitude = farm["longitude"] as? String
                    print(longitude)
                    let latitude = farm["latitude"] as? CLLocationDegrees
                    /*let item = Item(name: name,
                                    bio: bio,
                                    longitude: longitude,
                                    latitude: latitude,
                                    coordinate: CLLocationCoordinate2D(latitude: latitude, longitude: longitude))
                self.mapView.addAnnotation(item)*/
                }
                
            } catch  {
                print("error trying to convert data to JSON")
                return
            }
        }
        task.resume()

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
