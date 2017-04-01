//
//  StoreViewController.swift
//  real_quick
//
//  Created by Stanley Celestin on 4/1/17.
//  Copyright © 2017 Michael Umenta. All rights reserved.
//



import UIKit
import Firebase

class DistributorViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @available(iOS 2.0, *)
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    
    // MARK: Firebase
    var ref: FIRDatabaseReference!
    
    
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var priceText: UITextField!
    @IBOutlet weak var groceryLabel: UILabel!
    var grocery: String = ""
    
    var pickerData: [String] = [String]()
    
    var available = false;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.topItem?.title = "Any Hot Deals?"
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor(red: 2.0/255.0, green: 208.0/255.0, blue: 172.0/255.0, alpha: 1.0),NSFontAttributeName:UIFont.systemFont(ofSize: 25, weight: UIFontWeightLight)]
        
        let radius: CGFloat = addButton.bounds.size.width / 2.0
        
        addButton.layer.cornerRadius = radius
        
        ref = FIRDatabase.database().reference()
        
        // Connect data:
        self.picker.delegate = self
        self.picker.dataSource = self
        pickerData = ["Apples", "Bananas", "Carrots", "Oranges", "Peppers", "Pineapple", "Potatoes", "Spinach"]
    }
    
    func textField(_ textField: UITextField,
                   shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) -> Bool {
        
        // Create an `NSCharacterSet` set which includes everything *but* the digits
        let inverseSet = NSCharacterSet(charactersIn:"0123456789").inverted
        
        // At every character in this "inverseSet" contained in the string,
        // split the string up into components which exclude the characters
        // in this inverse set
        let components = string.components(separatedBy: inverseSet)
        
        // Rejoin these components
        let filtered = components.joined(separator: "")  // use join("", components) if you are using Swift 1.2
        
        // If the original string is equal to the filtered string, i.e. if no
        // inverse characters were present to be eliminated, the input is valid
        // and the statement returns true; else it returns false
        return string == filtered  
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // The number of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    // Catpure the picker view selection
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // This method is triggered whenever the user makes a change to the picker selection.
        // The parameter named row and component represents what was selected.
        grocery = pickerData[row]
        groceryLabel.text = grocery

    }
    
    
    @IBAction func saveGrocery(_ sender: AnyObject) {
        
        let userID = FIRAuth.auth()?.currentUser?.uid
        groceryLabel.text = "Deal! " + grocery + " for " + priceText.text!
        ref.child("users").child(userID!).child("grocery").setValue(groceryLabel.text)
    }
    
    
}
