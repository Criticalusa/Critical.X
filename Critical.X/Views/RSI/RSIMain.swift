//
//  RSIMain.swift
//  Critical_X_RSI
//
//  Created by Jadie Barringer III on 12/27/17.
//  Copyright © 2017 Jadie Barringer III. All rights reserved.
//

import UIKit
import AKLabel



class RSIMain: UIViewController {
   
    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var rsiTextField: UITextField!
    @IBOutlet weak var rsiTitle: AKLabel!
    @IBOutlet weak var settingsLabel: UILabel!
    //Rounds the edges of the round button. 
    @IBOutlet weak var calculateButtonRadius : UIView! {
        didSet {
            calculateButtonRadius.clipsToBounds = true
            calculateButtonRadius.layer.cornerRadius = 4
        }
    }
    
//    var calculatedNumber: String = ""
    
    
    
    //MARK: ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        // Do any additional setup after loading the view.
        let navigationBarAppearace = UINavigationBar.appearance()
        
        UINavigationBar.appearance().tintColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        UINavigationBar.appearance().backgroundColor = UIColor.green

       
        // change navigation item title color
        
        
        // Takes the button and makes it into a circle
        closeButton.layer.cornerRadius = closeButton.frame.size.width / 2
        
    }
    
    // Once the view appears, the animation starts.
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        //Function to run the RSI animation title.
        animateRSI()

    }
    
   
    // Animates the rsiSubtitle once the view is loaded.
    func animateRSI() -> Void {
        rsiTitle.font = UIFont(name: "HelveticaNeue-CondensedBold", size: 13)
        rsiTitle.animate(text: "Rapid Sequence Induction", duration: 1, completion: nil)
        
        // Settings label blinks when loaded from the extension.
        settingsLabel.blink(duration: 0.5, stopAfter:3.0)
    }
    
    
    

    @IBAction func SettingClick(_ sender: Any) {
        
        // Presents the settings VC via Storyboard identifier to instantiate the view controller.
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


