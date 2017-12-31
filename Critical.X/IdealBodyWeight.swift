//
//  IdealBodyWeight.swift
//  IdealBodyWeight
//
//  Created by Jadie Barringer III on 12/30/17.
//  Copyright © 2017 Jadie Barringer III. All rights reserved.
//

import UIKit

var maleCalc: Double = 0
var femaleCalc: Double = 0

class IdealBodyWeight: UIViewController {

    @IBOutlet weak var desiredTVText: UITextField!
    @IBOutlet weak var heightText: UITextField!
    @IBOutlet weak var closeButton: UIButton!
    
    
    @IBOutlet weak var idealBodyWeightSegment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Takes the button and makes it into a circle
        closeButton.layer.cornerRadius = closeButton.frame.size.width / 2

        // Do any additional setup after loading the view.
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
            destination.desiredTV = Double (desiredTVText.text!)
            destination.heightEntered = Double (heightText.text!)
            
        }
        
        if segue.identifier == "ibwShow" {
            // We segue to ACLSVC and pass the infomation from which row is pressed
            if let IBW = segue.destination as? IdealBWDataView {
                
                switch idealBodyWeightSegment.selectedSegmentIndex {
                case 0:
                    
                    // Declare a number variable that I can pass to the receiving view controller so that it knows which block of code is being initialized.
                    let id = 1
                    
                    // I set the ID block,  that is an INT  on the receiving view controller so I can access this in a switch statement.
                    IBW.idBlock = id
                    
                    
                    // set the TV to the corresponding text field
                    IBW.desiredTV = Double (desiredTVText.text!)
                    
                    
                    // maleIBWCalculation is set to zero on the receiving view controller, here I tell it if the segment is equal to zero from these calculations.
                    IBW.maleIBWCalculation =  (50 + 2.3 * (Double (heightText.text!)! - 60))
                    
                    
                    //Set the female calculations to zero, or it will crash showing nil.
                    IBW.femaleIBWCalculation = 0
                    IBW .femalelbs = 0
                    
                    
                    // I declared a global gender label on the receiving view controller and send it with the text.
                    IBW.genderLabel = "Male"
                    
                    // do a conversion to pounds from the ideal weight  calculated
                    
                   
                    

                    print("OK OK OK First Segment Selected")
                    print("")//create space on the console
                case 1:
                    
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
                
//                IBW.desiredTV = Double (desiredTVText.text!)
//                IBW.heightEntered =  Double (heightText.text!)
//
    
    }

    }
}
    // Dismisses the keyboard when the user taps on the outside of any textField
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true) //This will hide the keyboard
    }
   
    
    @IBAction func segmentSElected(_ sender: Any) {
        
        
        
        if(idealBodyWeightSegment.selectedSegmentIndex == 0)
        {
           
            
                       print("Male Segment Selected")
           
        }
        else if(idealBodyWeightSegment.selectedSegmentIndex == 1)
        {
            print("Female Segment Selected")
        }
        
    }
}