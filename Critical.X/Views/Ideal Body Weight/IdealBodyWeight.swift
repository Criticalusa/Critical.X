//
//  IdealBodyWeight.swift
//  IdealBodyWeight
//
//  Created by Jadie Barringer III on 12/30/17.
//  Copyright © 2017 Jadie Barringer III. All rights reserved.
//

import UIKit
import TextFieldEffects

var maleCalc: Double = 0
var femaleCalc: Double = 0

class IdealBodyWeight: UIViewController {
    
    @IBOutlet weak var desiredTVText1: UITextField!
    @IBOutlet weak var heightText1: TextFieldEffects!
    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var desiredTVText: TextFieldEffects!
    @IBOutlet weak var heightText: UITextField!
    @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var idealBodyWeightSegment: CustomSegmentedController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Takes the button and makes it into a circle
        closeButton.layer.cornerRadius = closeButton.frame.size.width / 2
        
        /// Rounds the corners 15 pixels of the button name
        calculateButton.clipsToBounds = true
        calculateButton.layer.cornerRadius = 4
        
        idealBodyWeightSegment?.items = ["M", "F"]
        
       

    }
    
    @IBAction func closeIdealBodyWeightScreen(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    @IBAction func popBtn(_ sender: Any) {
        
        let popTip = PopTip()
        popTip.bubbleColor = UIColor.darkGray
        popTip.textColor = UIColor.white
        popTip.actionAnimation = .float(0.5) // This will float for 0.5 instead of the default value
        
        // Identified where in the view to make the popUp show
        let here = CGRect (x: 18, y: 345, width: 100, height: 100)
        
        
        popTip.show(text: "TV should be based on IBW. Set between 6-8 mL/kg", direction: .up, maxWidth: 200, in: view, from: here)
        
        //        popTip.show(text: "Devine BJ. Gentamicin therapy. Drug Intell Clin Pharm. 1974;8:650–655.", direction: .down, maxWidth: 200, in: view, from: here)
        
        //Background color changes. Not sure how to dismiss.
        //        view.backgroundColor = UIColor.init(white: 0.4, alpha: 0.8)
        
        //let the user dismiss the popover by tapping on it
        popTip.shouldDismissOnTap = true
        
        //Changes the font of the pop-up and size
        //        popTip.font = UIFont(name: "AvenirNextCondensed-Heavy", size: 10.0)!
        
        
    }
    
    //MARK: Prepare for the SEGUE
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //        calculatedNumber = rsiTextField.text!
        
        ///// Checks the segue destination, grabs the number value from the textfield and passes the data.
        if let destination = segue.destination as? IdealBWDataView {
            
            //Takes the Double (weightEntered) variable from the detail page, and parses it as the textFireld (Double) becuase the textField is origionally casted as a string.
            // If any of these Optional values are NIL (or Empty) then Initiate the following code before the return value.
           
            destination.desiredTV = Double (desiredTVText.text!)
            destination.heightEntered = Double (heightText.text!)
            
        }
        
        if segue.identifier == "ibwShow" {
            // We segue to ACLSVC and pass the infomation from which row is pressed
            if let IBW = segue.destination as? IdealBWDataView {
                
                switch idealBodyWeightSegment?.selectedIndex {
                case 0?:
                    
                    
                    //                    ///Guard statement if no values in the textField.
                    //                    guard let _ = desiredTV , let _ = heightEntered  else {
                    //                        print("Error! out of normal parameters for Male selected"); return }
                    //
                    // Declare a number variable that I can pass to the receiving view controller so that it knows which block of code is being initialized. Then use this ID block in a swutch statement to reference what you want ! 
                    let id = 1
                    
                    // I set the ID block,  that is an INT  on the receiving view controller so I can access this in a switch statement.
                    IBW.idBlock = id
                    
                    // do a conversion to pounds from the ideal weight  calculated
                    let poundsMale = (maleIBWCalculation * 2.2)
                    
                    IBW .malelbs = poundsMale
                    
                    
                    //                    // set the TV to the corresponding text field
                    IBW.desiredTV = Double (desiredTVText.text!)
                    //
                    
                                        // maleIBWCalculation is set to zero on the receiving view controller, here I tell it if the segment is equal to zero from these calculations.
                    IBW.maleIBWCalculation =  (50 + 2.3 * (Double (heightText.text!)! - 60))
                    
                    
                                        //Set the female calculations to zero, or it will crash showing nil.
                    IBW.femaleIBWCalculation = 0
                    IBW .femalelbs = 0
                    
                    
                                // I declared a global gender label on the receiving view controller and send it with the text.
                    IBW.genderLabel = "Male"
                    //
                    
                    
                    
                    print("OK OK OK First Segment Selected")
                    print("")//create space on the console
                case 1?:
                    
                    // Declare a number variable that I can pass to the receiving view controller so that it knows which block of code is being initialized.
                    let id = 2
                    
                    // I set the ID block,  that is an INT  on the receiving view controller so I can access this in a switch statement.
                    IBW.idBlock = id
                    
                    let poundsFemale = (femaleIBWCalculation * 2.2)
                    
                    IBW.desiredTV = Double (desiredTVText.text!)
                    IBW.femaleIBWCalculation =  (45.5 + 2.3 * (Double (heightText.text!)! - 60))
                    IBW.maleIBWCalculation = 0
                    IBW.genderLabel = "Female"
                    IBW .femalelbs = poundsFemale
                    IBW.malelbs = 0
                    
                    print("OK OK OK Second Segment Selected")
                    print("") //create space on the console
                    
                default:
                    break
                }
                
            }
            
        }
    }
    
    // Dismisses the keyboard when the user taps on the outside of any textField
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true) //This will hide the keyboard
    }
    
    
    /// Cancels the segue transition if the textBox is empty
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "ibwShow" {
            if (desiredTVText.text?.isEmpty)! && (heightText.text?.isEmpty)! || (desiredTVText.text == "0.0") && (heightText.text == "0.0") {
                print(" Ideal body weight segue cancelled")
                
                //Displays alert
                _ = SCLAlertView().showWarning("Error!", subTitle: "Make sure all of the text fields have values before calculating.")
               
                return false
            }
        }
        
        // by default, transition
        return true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.view.endEditing(true)
    }
    
    @IBAction func segmentSElected(_ sender: Any) {
        
        
        
        if(idealBodyWeightSegment?.selectedIndex == 0)
        {
            
            
            print("Male Segment Selected")
            
        }
        else if(idealBodyWeightSegment?.selectedIndex == 1)
        {
            print("Female Segment Selected")
        }
        
    }
}
