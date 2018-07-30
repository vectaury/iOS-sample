//
//  ViewController.swift
//  CMP-Sample
//
//  Created by Pernic on 30/07/2018.
//  Copyright © 2018 Vectaury. All rights reserved.
//

import UIKit
import VectauryCMP
class ViewController: UIViewController {
    
    @IBOutlet weak var editCMPAuthorization : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        VectauryCMP.present(force: false, withNotice: true) // Only one time with notice information
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func editCMPAuthorizationTouchUpInside(_ sender: Any) {
        VectauryCMP.present(force: true, withNotice: false) // Always without the notice information
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

