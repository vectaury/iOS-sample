//
//  ViewController.swift
//  IOS-Sample
//
//  Created by Pernic on 17/11/2017.
//  Copyright © 2017 Pernic. All rights reserved.
//

import UIKit
import Vectaury

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Vectaury.requestAuthorization()
        Vectaury.setlanguage("fr")
        Vectaury.startLocation()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

