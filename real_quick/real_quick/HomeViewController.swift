//
//  HomeViewController.swift
//  real_quick
//
//  Created by Kory Brown on 4/1/17.
//  Copyright © 2017 Michael Umenta. All rights reserved.
//

import UIKit
import Firebase

class HomeViewController: UIViewController {
    
    @IBOutlet weak var notificationArea: UITextView!
    
    // consumer
    let banana = FIRDatabase.database().reference().child("banana")
    let apple = FIRDatabase.database().reference().child("apple")
    let orange = FIRDatabase.database().reference().child("orange")
    let pineapple = FIRDatabase.database().reference().child("pineapple")
    let potato = FIRDatabase.database().reference().child("potato")
    let pepper = FIRDatabase.database().reference().child("pepper")
    let spinach = FIRDatabase.database().reference().child("spinach")
    let carrot = FIRDatabase.database().reference().child("carrot")
    
    // distributor
    let banana1 = FIRDatabase.database().reference().child("banana1")
    let apple1 = FIRDatabase.database().reference().child("apple")
    let orange1 = FIRDatabase.database().reference().child("orange")
    let pineapple1 = FIRDatabase.database().reference().child("pineapple")
    let potato1 = FIRDatabase.database().reference().child("potato")
    let pepper1 = FIRDatabase.database().reference().child("pepper")
    let spinach1 = FIRDatabase.database().reference().child("spinach")
    let carrot1 = FIRDatabase.database().reference().child("carrot")
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.navigationController?.navigationBar.topItem?.title = "Check on Your Groceries"
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor(red: 2.0/255.0, green: 208.0/255.0, blue: 172.0/255.0, alpha: 1.0),NSFontAttributeName:UIFont.systemFont(ofSize: 25, weight: UIFontWeightLight)]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //    func notify(){
    //        DispatchQueue.global(qos: .background).async {
    //            var tempB = self.bananavalue as? Bool ?? false
    //            var tempB1 = self.banana1.value as? Bool ? false
    //
    //
    //
    //
    //            if tempB == true && tempB1 == true {
    //                  DispatchQueue.main.async {
    //                self.notificationArea.text = "Banana\n"
    //                }
    //            }
    //        }
    //    }
}
