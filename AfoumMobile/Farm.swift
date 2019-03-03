//
//  Farm.swift
//  AfoumMobile
//
//  Created by Priscilla Koo on 3/3/19.
//  Copyright © 2019 Afuom. All rights reserved.
//

import Foundation
import MapKit

/*
mapView.showsUserLocation = true
centerMapOnLocation(location: homeLocation)

let todoEndpoint: String = "http://23.96.12.110/api/locations"
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
        guard let locations = todo["locations"] as? [[String: Any]] else {
            print("Could not get todo title from JSON")
            return
        }
        for location in locations {
            if let lat = location["latitude"] as? Double {
                if let long = location["longitude"] as? Double {
                    if let threat = location["threat"] as? String {
                        if threat == "rodents" {
                            print("hi")
                            let item2 = Item(title: "Cool stuff",
                                             locationName: "loco",
                                             discipline: "Sculpture",
                                             coordinate: CLLocationCoordinate2D(latitude: lat, longitude: long))
                            self.mapView.addAnnotation(item2)
                        }
                    }
                }
            }
        }
    } catch  {
        print("error trying to convert data to JSON")
        return
    }
}
task.resume()

*/

struct Farms {
    struct Data{
        let name: String
        let bio: String
        let area: String
        let interested_in_selling: Bool
        struct location {
            let latitude: Float
            let longitude: Float
        }
    }


    enum SerializationError:Error{
        case missing(String)
        case invalid(String, Any)
    }
 
//    init(json:[String:Any]) throws {
//        guard let farmName = json["name"] as?String else {throw SerializationError.missing("no farm name")}
//        guard let farmLocationLongitude = json["name"] as?Float else {throw SerializationError.missing("no farm location")}
//        guard let farmLocationLatitude = json["name"] as?Float else {throw SerializationError.missing("no farm location")}
//        guard let farmLocation = json["location"]  else {throw SerializationError.missing("no location")}
//
//        self.Data.name = farmName
////        self.l = farmLocationLatitude
////        self.farmLocationLongitude = farmLocationLongitude
//        self.location = farmLocation
//
//    }
}
/*
do{
    
    
}catch let parsingError{
    
}

    static let basePath = "http:23.96.12.110/api/get/allfarms"
 
    static func farmDescription (withName name:String, completion: @escaping([Farm]) -> ()) {
 
        let url = basePath + name
        let request = URLRequest(url: URL(string: url)!)
 
        let task = URLSession.shared.dataTask(with: request) { (data:Data?, response:URLResponse?, error:Error?) in
 
            var farmArray:[Farm] = []
 
            if let data = data {
 
                do {
                    if let json = try JSONSerialization.jsonObject(with: data, options: []) as? String {
                        if let farmData = json["data"] as? String {
                            if let farmName = farmData["name"] as? [String:Any] {
                                if let farmLocationLatitude = farmData["location"]["latitude"] as? String {
                                    if let farmLocationLongitude = farmData["location"]["longitude"] as? String {
                                        for dataPoint in farmData {
                                            if let farmObject = try? Farm(json: farmName) {
                                                farmArray.append(farmObject)
                                            }
                                        }                                    }
                                }
                            }
                        }
 
                    }
                }catch {
                    print(error.localizedDescription)
                }
 
                completion(farmArray)
 
            }
 
 
        }
 
        task.resume()
 
 
 
 
 
 
 
 
    }
}

*/
