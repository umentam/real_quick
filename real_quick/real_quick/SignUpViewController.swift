//
//  ViewController.swift
//  real_quick
//
//  Created by Michael Umenta on 3/31/17.
//  Copyright © 2017 Michael Umenta. All rights reserved.
//

import UIKit
import Firebase

class SignUpViewController: UIViewController {
    
    var ref:FIRDatabaseReference!
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ref = FIRDatabase.database().reference()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signUp(_ sender: AnyObject) {
        
        var nameString = name.text
        var emailString = email.text
        var passwordString = password.text
        
        FIRAuth.auth()?.createUser(withEmail: emailString!, password: passwordString!) { (user, error) in
            if error != nil {
                print(error)
                return
            }else{
                self.ref.child("users").child(user!.uid).setValue(["username": nameString!, "email-address": emailString!])
                return
            }
        }
        
        
    }
    
    
}

