//
//  UserViewController.swift
//  real_quick
//
//  Created by Stanley Celestin on 4/1/17.
//  Copyright © 2017 Michael Umenta. All rights reserved.
//


import UIKit
import Firebase

class UserViewController: UIViewController {
    
    let banana = FIRDatabase.database().reference().child("banana")
    
    
    var available = false;
    
    @IBOutlet weak var labelName: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func bananaDidClick(_ sender: Any) {
        available = available == true ? false : true
        //        available = true;
        
        banana.setValue(available)
        
        labelName.text="Item Available \(available) "
    }
}
