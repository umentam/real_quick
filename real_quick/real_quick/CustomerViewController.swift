//
//  StoreViewController.swift
//  real_quick
//
//  Created by Stanley Celestin on 4/1/17.
//  Copyright © 2017 Michael Umenta. All rights reserved.
//



import UIKit
import Firebase

class CustomerViewController: UIViewController {
    
    // MARK: Firebase
    var ref: FIRDatabaseReference!
    
    
    var available = false;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.topItem?.title = "Customer"
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor(red: 2.0/255.0, green: 208.0/255.0, blue: 172.0/255.0, alpha: 1.0),NSFontAttributeName:UIFont.systemFont(ofSize: 25, weight: UIFontWeightLight)]
        
        ref = FIRDatabase.database().reference()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
}
