//
//  StoreViewController.swift
//  real_quick
//
//  Created by Stanley Celestin on 4/1/17.
//  Copyright © 2017 Michael Umenta. All rights reserved.
//



import UIKit
import Firebase

class StoreViewController: UIViewController {
    
    // MARK: Firebase
    var ref: FIRDatabaseReference!
    
    
    // MARK: Properties
    
    @IBOutlet weak var labelName: UITextField!
    

    @IBOutlet weak var bananaButton: UIButton!
    
    var available = false;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bananaButton.layer.cornerRadius = 4
        labelName.text="Item Available \(available) "
        ref = FIRDatabase.database().reference()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func getItemButtonClick(_ sender: Any) {
        available = available == true ? false : true
        //        available = true;
        
        self.ref.child("users/kory/banana").setValue(available)
        
        labelName.text="Item Available \(available) "
    }
    
    
}
