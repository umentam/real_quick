//
//  ViewController.swift
//  real_quick
//
//  Created by Michael Umenta on 3/31/17.
//  Copyright © 2017 Michael Umenta. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    let banana = FIRDatabase.database().reference().child("banana")

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

