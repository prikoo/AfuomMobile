//
//  ViewController.swift
//  AfoumMobile
//
//  Created by Priscilla Koo on 3/2/19.
//  Copyright © 2019 Afuom. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var picker: UIPickerView!
    
    var pickerCropData: [String] = [String]()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        pickerCropData = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"]
    
        // Do any additional setup after loading the view, typically from a nib.
    }


}

