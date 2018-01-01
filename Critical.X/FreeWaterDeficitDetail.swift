//
//  ViewController.swift
//  FreeWaterDeficit
//
//  Created by Jadie Barringer III on 12/31/17.
//  Copyright © 2017 Jadie Barringer III. All rights reserved.
//

import UIKit

class FreeWaterDeficitDetail: UIViewController {
    
    //Outlets
    @IBOutlet weak var freeWaterResultLabel: UILabel!
    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var freeWaterView: UIView!
    @IBOutlet weak var iVFlowRateTxt: UILabel!
    
    
    //variables
    var resultChildMale:Double?
    var resultAdultMale:Double?
    var resultElderlyMale:Double?
    
    var resultChildFemale:Double?
    var resultAdultFemale:Double?
    var resultElderlyFemale:Double?
    
    
    var weight: Double?
    var desiredNa: Double?
    var currentNa: Double?
    var idBlock: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Takes the button and makes it into a circle
        closeButton.layer.cornerRadius = closeButton.frame.size.width / 2
        
        /// Rounds the corners 15 pixels of the UIView name
        freeWaterView.clipsToBounds = true
        freeWaterView.layer.cornerRadius = 15
        
        // calls the method below to be executed.
        freeWaterCalculations()
    }
    
    func freeWaterCalculations(){
        
        //Guard statemtent for the Optional values only.// When  weight parameter is only met
        guard let _ = weight, let _ = currentNa, let _ = desiredNa  else {
            
            freeWaterResultLabel.text = "Error!"
            iVFlowRateTxt.text = "Please all the values, then calculate"
           
            print("One of the textFrield parameters missing")
            print("")
           
            
            return } // All enacting code runs afer here.
        
        print("All input parameters were met. Results calculated.")
        print("")// Makes space in the console
        print("Weight is \(String(weight!)) kg")
        print("")
        print("Current Na is \(String(currentNa!))")
        print("")
        print("Desired Na is \(String(desiredNa!))")
        print("Weight is \(String(weight!)) kg")
        print("")
        print("Current Na is \(String(currentNa!))")
        print("")
        print("Desired Na is \(String(desiredNa!))")
        
        //Calculates the time it takes to correct the Na in hours.
        let hoursToCorrectSodium =  (currentNa! - desiredNa!) / 0.5
        
        //Switching on idBlock on the sending VC. That way we can
        switch idBlock { // Takes the ID block number in the IF statement from the sending VC and we can reference it here.
        
           
        //Male Calculations
        case 1: //Mark:Male Child
            
            // Since we cant add a string to the end of the format, We just create another instance and add Liters later in the label.
            let ChildMale = String(format:"%.1f",resultChildMale!)
            
            freeWaterResultLabel.text = ChildMale + " L"
            
            let infusionRate = (resultChildMale! / hoursToCorrectSodium) * 1000
            
            //let infusionRate = String(format:"%.1f",infusionRate1)
            iVFlowRateTxt.text = "IV flow rate of \(Int(infusionRate)) cc/hr for \(hoursToCorrectSodium) hrs."
            
            print("Child Male is " + ChildMale + " L")
            print("")
            print("IV flow rate of \(infusionRate) cc/hr for \(hoursToCorrectSodium) hrs.")
            
        case 2: //Mark:Male Adult
            
            let AdultMale = String(format:"%.1f",resultAdultMale!)
            
            freeWaterResultLabel.text = AdultMale + " L"
            
            let infusionRate = (resultAdultMale! / hoursToCorrectSodium) * 1000
            
            //let infusionRate = String(format:"%.1f",infusionRate1)
            iVFlowRateTxt.text = "IV flow rate of \(Int(infusionRate)) cc/hr for \(hoursToCorrectSodium) hrs."
            
            print("Adult Male is " + AdultMale + " L")
            print("")
            print("IV flow rate of \(infusionRate) cc/hr for \(hoursToCorrectSodium) hrs.")
            
            
        case 3: //Mark:Male Elderly
            
            let ElderlyMale = String(format:"%.1f",resultElderlyMale!)
            
            freeWaterResultLabel.text = ElderlyMale + " L"
       
            
            let infusionRate = (resultElderlyMale! / hoursToCorrectSodium) * 1000
            
            //let infusionRate = String(format:"%.1f",infusionRate1)
            iVFlowRateTxt.text = "IV flow rate of \(Int(infusionRate)) cc/hr for \(hoursToCorrectSodium) hrs."
            
            
            print("Elderly Make is " + ElderlyMale + " L")
            print("")
            print("IV flow rate of \(infusionRate) cc/hr for \(hoursToCorrectSodium) hrs.")

        
        //Female Calculations
        case 4: //Mark:Female Child
            
            // Since we cant add a string to the end of the format, We just create another instance and add Liters later in the label.
            let ChildFemale = String(format:"%.1f",resultChildFemale!)
            
            freeWaterResultLabel.text = ChildFemale + "L"
            
            let infusionRate = (resultChildFemale! / hoursToCorrectSodium) * 1000
            
            //let infusionRate = String(format:"%.1f",infusionRate1)
            iVFlowRateTxt.text = "IV flow rate of \(Int(infusionRate)) cc/hr for \(hoursToCorrectSodium) hrs."
            
            print("Child female is " + ChildFemale + " L")
            print("")
            print("IV flow rate of \(infusionRate) cc/hr for \(hoursToCorrectSodium) hrs.")

        case 5: //Mark:Female Adult
            let AdultFemale = String(format:"%.1f",resultAdultFemale!)
            
            freeWaterResultLabel.text = AdultFemale + " L"
            
            let infusionRate = (resultAdultFemale! / hoursToCorrectSodium) * 1000
            
            //let infusionRate = String(format:"%.1f",infusionRate1)
            iVFlowRateTxt.text = "IV flow rate of \(Int(infusionRate)) cc/hr for \(hoursToCorrectSodium) hrs."
            
            
            print("Adult female is " + AdultFemale + " L")
            print("")
            print("IV flow rate of \(infusionRate) cc/hr for \(hoursToCorrectSodium) hrs.")

        case 6: //Mark:Female Elderly
            let ElderlyFemale = String(format:"%.1f",resultElderlyFemale!)
            
            freeWaterResultLabel.text =  ElderlyFemale + " L"
            
            let infusionRate = (resultElderlyFemale! / hoursToCorrectSodium) * 1000
            
            //let infusionRate = String(format:"%.1f",infusionRate1)
            iVFlowRateTxt.text = "IV flow rate of \(Int(infusionRate)) cc/hr for \(hoursToCorrectSodium) hrs."
            
            print("IV flow rate of \(infusionRate) cc/hr for \(hoursToCorrectSodium) hrs.")
            print("")
            print("Elderly Female is " + ElderlyFemale + " L")
            
        default:
            break
        }
        
       
    }
    
    
    /// Popover for the IV flow Rate
    @IBAction func IVFlowReferene(_ sender: Any) {
        
        let popTip = PopTip()
        popTip.bubbleColor = UIColor.darkGray
        popTip.textColor = UIColor.white
        popTip.actionAnimation = .float(0.5) // This will float for 0.5 instead of the default value
        
        // Identified where in the view to make the popUp show
        let here = CGRect (x: 130, y: 700, width: 100, height: 100)
        
        
        popTip.show(text: "Calculation is based on a conservative correction rate of 0.5 mEq/L/hr.", direction: .up, maxWidth: 200, in: view, from: here)
        
        //        popTip.show(text: "Devine BJ. Gentamicin therapy. Drug Intell Clin Pharm. 1974;8:650–655.", direction: .down, maxWidth: 200, in: view, from: here)
        
        //Background color changes. Not sure how to dismiss.
        //        view.backgroundColor = UIColor.init(white: 0.4, alpha: 0.8)
        
        //let the user dismiss the popover by tapping on it
        popTip.shouldDismissOnTap = true
        
        //Changes the font of the pop-up and size
        //        popTip.font = UIFont(name: "AvenirNextCondensed-Heavy", size: 10.0)!
        
        
    }
    
    @IBAction func closeFreeWaterDetail(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        print("View Controller was dismissed")
    }
    @IBAction func hiddenButton(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        print("View Controller was dismissed")

    }
    
}

