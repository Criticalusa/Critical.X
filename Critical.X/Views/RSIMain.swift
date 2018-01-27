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

    @IBAction func SettingClick(_ sender: Any) {
        let settingController = self.storyboard?.instantiateViewController(withIdentifier: "RSISetting") as! RSISetting
        self.present(settingController, animated: true, completion: nil)
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
    
    @IBAction func calcualteGuard(_ sender: Any) {
        
        guard let txt = rsiTextField else {
            
         
            // Yellow Warning Alert // Takes the button and makes it into a circle
            _ = SCLAlertView().showWarning("Hold On...", subTitle: "Check all of the fields before calculating.")

            print("texfield is empty")
            
            return  }
    }
    /// Cancels the segue transition if the textBox is empty
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "RSI" {
            if (rsiTextField.text?.isEmpty)! || (rsiTextField.text == "0.0") {
                print("segue cancelled")
                
                // Yellow Warning Alert // Takes the button and makes it into a circle
                _ = SCLAlertView().showWarning("Hold On...", subTitle: "Check all of the fields before calculating.")

                return false
            }
        }
        
        // by default, transition
        return true
    }
    


    // Dismisses the keyboard when the user taps on the outside of any textField
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true) //This will hide the keyboard
    }
    
    @IBAction func RSIVCDismiss(_ sender: Any) {
        self.view.endEditing(true) //This will hide the keyboard

        dismiss(animated: true, completion: nil)
        print("View Controller was dismissed")
        
    }
}


