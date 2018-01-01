//
//  RSIMain.swift
//  Critical_X_RSI
//
//  Created by Jadie Barringer III on 12/27/17.
//  Copyright © 2017 Jadie Barringer III. All rights reserved.
//

import UIKit

class RSIMain: UIViewController {
   
    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var rsiTextField: UITextField!
    
//    var calculatedNumber: String = ""
    
    
    
    //MARK: ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        
        
        // Takes the button and makes it into a circle
        closeButton.layer.cornerRadius = closeButton.frame.size.width / 2
        
    }


    //MARK: Prepare for the SEGUE
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
//        calculatedNumber = rsiTextField.text!
        
            ///// Checks the segue destination, grabs the number value from the textfield and passes the data.
            if let destination = segue.destination as? RSIDetail {
                
                //Takes the Double (weightEntered) variable from the detail page, and parses it as the textFireld (Double) becuase the textField is origionally casted as a string.
                destination.weightEntered = Double (rsiTextField.text!)
                
            }

        }
    
    
    @IBAction func RSIMain(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        closeButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: Selector(("buttonTapped"))))

    }
  
    // Dismisses the keyboard when the user taps on the outside of any textField
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true) //This will hide the keyboard
    }
    
    @IBAction func CalculateBtn(_ sender: Any) {
        
            /// if the textField is empty. the text will be set to zero and the UI Alert will come up.
            guard let theText = rsiTextField.text, theText.isEmpty else {
                // theText is empty
                return // or throw
            }
            rsiTextField.text = "0"
            
            let alert = UIAlertController(title: "Please enter a numeric value", message:  "Enter an appropriate weight greater than zero to calcualte.", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Got it", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert,animated: true, completion: nil)
            
        }
        
    }
    
    



