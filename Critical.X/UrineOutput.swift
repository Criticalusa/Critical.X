//
//  UrineOutput.swift
//  UrineOutputCalculator
//
//  Created by Jadie Barringer III on 1/1/18.
//  Copyright © 2018 Jadie Barringer III. All rights reserved.
//

import UIKit

class UrineOutput: UIViewController {
    
    // Outlets
    @IBOutlet weak var segmentWeight: UISegmentedControl!
    @IBOutlet weak var segmentUrineOutput: UISegmentedControl!
    @IBOutlet weak var liters_mL_Label: UILabel!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var urineOurputTextField: UITextField!
    @IBOutlet weak var hoursTextField: UITextField!
    @IBOutlet weak var closeButtonMain: UIButton!

    var finalCalculation:Double?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Takes the button and makes it into a circle
        closeButtonMain.layer.cornerRadius = closeButtonMain.frame.size.width / 2
    
    }
    
    func urineOutputFormula(weight: Double, UrineOutput: Double, Time: Double) -> Double {
        
        var urineOut: Double {return (Time / (weight * 24))}
        
        return urineOut
  }
    
    
    //MARK: Prepare for the SEGUE
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        ///// Checks the segue destination, grabs the number value from the textfield and passes the data.
        if let destination = segue.destination as? UrineOutputData {
            
            //Im setting the result of the UO to equal the var result on the rec VC
            destination.result = finalCalculation
            
        }
        
        if segue.identifier == "urineSegue" {
            // We segue to ACLSVC and pass the infomation from which row is pressed
            if let urineOutputData = segue.destination as? UrineOutputData {
                
                switch (segmentWeight.selectedSegmentIndex, segmentUrineOutput.selectedSegmentIndex) {
                    
                case (0,0): // Adult mLs
                    
                    // Declare a number variable that I can pass to the receiving view controller so that it knows which block of code is being initialized.
                    let id = 0
                    
                    // I set the ID block,  that is an INT  on the receiving view controller so I can access this in a switch statement.
                    urineOutputData.idBlock = id
                   
                    //setting textField to variables to be used in the calculation
                    let weight = Double(weightTextField.text!)
                    let urineOutput = Double(urineOurputTextField.text!)
                    let time = Double(hoursTextField.text!)
                    let oliguria = ""
                    
                   
                    
                    urineOutputData.result = Double (urineOutput! / (weight! * time!))
                    
                case (0,1): // Adult Liters
                    
                    // Declare a number variable that I can pass to the receiving view controller so that it knows which block of code is being initialized.
                    let id = 1
                    
                    // I set the ID block,  that is an INT  on the receiving view controller so I can access this in a switch statement.
                    urineOutputData.idBlock = id
                    
                    
                    //setting textField to variables to be used in the calculation
                    let weight = Double(weightTextField.text!)
                    let time = Double(hoursTextField.text!)
                    let urineOutputLitersConversion = Double(urineOurputTextField.text!)! * 1000

                    
                   
                    
                    urineOutputData.result = Double (urineOutputLitersConversion / (weight! * time!))
                
                case (1,0):// Peds mLs
                    
                    // Declare a number variable that I can pass to the receiving view controller so that it knows which block of code is being initialized.
                    let id = 2
                    
                    // I set the ID block,  that is an INT  on the receiving view controller so I can access this in a switch statement.
                    urineOutputData.idBlock = id
                    
                    
                    //setting textField to variables to be used in the calculation
                    let weight = Double(weightTextField.text!)
                    let urineOutput = Double(urineOurputTextField.text!)
                    let time = Double(hoursTextField.text!)
                    
                    urineOutputData.result = Double (urineOutput! / (weight! * time!))
                    
                    
                case (1,1): // Peds Liters
                    
                    // Declare a number variable that I can pass to the receiving view controller so that it knows which block of code is being initialized.
                    let id = 3
                    
                    // I set the ID block,  that is an INT  on the receiving view controller so I can access this in a switch statement.
                    urineOutputData.idBlock = id
                    
                    //setting textField to variables to be used in the calculation
                    let weight = Double(weightTextField.text!)
                    let urineOutputLitersConversion = Double(urineOurputTextField.text!)! * 1000
                    let time = Double(hoursTextField.text!)
                    
                    
                
                    urineOutputData.result = Double (urineOutputLitersConversion / (weight! * time!))
                    
                default:
                    break;
                }
            }
       }
  }
    
    @IBAction func UrineSegmentChange(_ sender: Any) {
    
        switch segmentUrineOutput.selectedSegmentIndex {
        case 0:
            liters_mL_Label.text = "mL"
        case 1:
            liters_mL_Label.text = "L"
        default:
            break
        }
    
    }
    
    // Dismisses the keyboard when the user taps on the outside of any textField
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true) //This will hide the keyboard
    }
    
    @IBAction func calculateAction(_ sender: Any) {
        
    guard let theWeight = weightTextField.text, theWeight.isEmpty,  let theHours = hoursTextField.text, theHours.isEmpty, let Urine = urineOurputTextField.text, Urine.isEmpty else {
            
            print("Paramaters variables are not met"); return }
       
        weightTextField.text = "0"; urineOurputTextField.text = "0"; hoursTextField.text = "0"
        
        let alert = UIAlertController(title: "Please enter a numeric value", message:  "Enter an appropriate weight greater than zero to calcualte.", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Got it", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert,animated: true, completion: nil)
        
    }
    
    
    
    @IBAction func dismissMainUrineOutputMain(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        print("View Controller was dismissed")
        
    }
    
}//end of the class
