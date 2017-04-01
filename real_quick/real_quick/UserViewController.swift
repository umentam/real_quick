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
    
    let apple = FIRDatabase.database().reference().child("apple")
    
    let orange = FIRDatabase.database().reference().child("orange")
    
    let pineapple = FIRDatabase.database().reference().child("pineapple")
    
    var available0 = false;
    var available1 = false;
    var available2 = false;
    var available3 = false;
    
    @IBOutlet weak var text0: UITextField!
    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var text2: UITextField!
    @IBOutlet weak var text3: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func bananaDidClick(_ sender: Any) {
        
        available0 = available0 == true ? false : true
        
        apple.setValue(available0)
        
        //text0.text="Item Available \(available0) "
        
        if( available0 == false){
            text0.text = "❌"
        }
        else{
            text0.text = "✅"
        }
    }
    
    @IBAction func appleDidClick(_ sender: Any) {
        
        available1 = available1 == true ? false : true
        
        apple.setValue(available1)
        
        // text1.text="Item Available \(available1) "
        
        if( available1 == false){
            text1.text = "❌"
        }
        else{
            text1.text = "✅"
        }
    }
    
    @IBAction func pineappleDidClick(_ sender: Any) {
        
        available2 = available2 == true ? false : true
        
        pineapple.setValue(available2)
        
        //text2.text="Item Available \(available2) "
        
        if( available2 == false){
            text2.text = "❌"
        }
        else{
            text2.text = "✅"
        }
    }
    
    @IBAction func orangeDidClick(_ sender: Any){
        available3 = available3 == true ? false : true
        
        orange.setValue(available3)
        
        //text3.text="Item Available \(available3) "
        
        if( available3 == false){
            text3.text = "❌"
        }
        else{
            text3.text = "✅"
        }
    }
    
    
    let potato = FIRDatabase.database().reference().child("potato")
    
    let pepper = FIRDatabase.database().reference().child("pepper")
    
    let spinach = FIRDatabase.database().reference().child("spinach")
    
    let carrot = FIRDatabase.database().reference().child("carrot")
    
    
    var available4 = false;
    var available5 = false;
    var available6 = false;
    var available7 = false;
    
    
    @IBOutlet weak var text4: UITextField!
    @IBOutlet weak var text5: UITextField!
    @IBOutlet weak var text6: UITextField!
    @IBOutlet weak var text7: UITextField!
    
    @IBAction func didClickPotato(_ sender: Any) {
        available4 = available4 == true ? false : true
        
        potato.setValue(available4)
        
        // text4.text="Item Available \(available4) "
        if( available4 == false){
            text4.text = "❌"
        }
        else{
            text4.text = "✅"
        }
    }
    
    @IBAction func didClickPepper(_ sender: Any) {
        available5 = available5 == true ? false : true
        
        pepper.setValue(available5)
        
        //text5.text="Item Available \(available5) "
        
        if( available5 == false){
            text5.text = "❌"
        }
        else{
            text5.text = "✅"
        }
    }
    
    @IBAction func didClickSpinach(_ sender: Any) {
        available6 = available6 == true ? false : true
        
        spinach.setValue(available6)
        
        //text6.text="Item Available \(available6) "
        if( available6 == false){
            text6.text = "❌"
        }
        else{
            text6.text = "✅"
        }
    }
    
    @IBAction func didClickCarrot(_ sender: Any) {
        available7 = available7 == true ? false : true
        
        carrot.setValue(available7)
        
        //text7.text="Item Available \(available7) "
        if( available7 == false){
            text7.text = "❌"
        }
        else{
            text7.text = "✅"
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
