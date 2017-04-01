//
//  ViewController.swift
//  real_quick
//
//  Created by Michael Umenta on 3/31/17.
//  Copyright © 2017 Michael Umenta. All rights reserved.
//

import UIKit
import Firebase

class StoreViewController: UIViewController {
  
    // MARK: Firebase
    var ref: FIRDatabaseReference!
   
    
   // MARK: Properties 
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var gotItemButton: UIButton!
    
    var available = false;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gotItemButton.layer.cornerRadius = 4
        labelName.text="Item Available \(available) "
        ref = FIRDatabase.database().reference()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func getItemButtonClick(_ sender: UIButton) {
        available = available == true ? false : true
//        available = true;
        
        self.ref.child("users/kory/banana").setValue(available)
        
        labelName.text="Item Available \(available) "
        
        
    }

}

