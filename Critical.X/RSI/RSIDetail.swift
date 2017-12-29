//
//  RSIDetail.swift
//  Critical_X_RSI
//
//  Created by Jadie Barringer III on 12/27/17.
//  Copyright © 2017 Jadie Barringer III. All rights reserved.
//

import UIKit

class RSIDetail: UIViewController {
    
    // Outlets

    @IBOutlet weak var ninePsButton: UIButton!
    @IBOutlet weak var presentedView: UIView!
    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var atropine_Label: UILabel!
    @IBOutlet weak var lidocaine_Label: UILabel!
    @IBOutlet weak var fentanyl_Label: UILabel!
    @IBOutlet weak var kgWeight_Label: UILabel!
    @IBOutlet weak var rocuronium_Defasiculation_Label: UILabel!
    @IBOutlet weak var glycopyrolate_Label: UILabel!
    @IBOutlet weak var vecuronium_Defasiculation_Label: UILabel!
    @IBOutlet weak var etomidate_Label: UILabel!
    @IBOutlet weak var versed_Label: UILabel!
    @IBOutlet weak var ketamine_Label: UILabel!
    @IBOutlet weak var propofol_Label: UILabel!
    @IBOutlet weak var succinycholine_Label: UILabel!
    @IBOutlet weak var cisatricurium_Label: UILabel!
    @IBOutlet weak var rocuronium_Label: UILabel!
    @IBOutlet weak var vecuronium_Label: UILabel!
    
    
    
    
    public var kgDisplay: String?
    public var weightEntered: Double?

   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Rounds the corners of the View
        presentedView.clipsToBounds = true
        presentedView.layer.cornerRadius = 25
        
        // Takes the button and makes it into a circle
        closeButton.layer.cornerRadius = closeButton.frame.size.width / 2
        ninePsButton.layer.cornerRadius = ninePsButton.frame.size.width / 2
        
        //Helper fuction
        rsiCalculation()
        
    }

    
   

    
    
    
    
    func rsiCalculation(){
        
        //MARK: GUARD Guard statement saying that if the weight is not enterend and the calculated button is pushed, Print this statement.
        guard let myWeight = weightEntered else { // Code executed if the textField is left empty
            
            print ("No weight has been entered") //Print statement on the console
            kgWeight_Label.text = "Please enter a weight value" // Changes the textLabel's language
            kgWeight_Label.textColor = UIColor.orange // Changes the textColor of the label
            presentedView.backgroundColor = UIColor.black // Changes the background color of the view
            return   }
        
      
        
        
        /// Closure When calculation has one value to be multiplied
        let doseRange1 = {(initialDose: Double, range1: Double) -> (String) in
            let initialDose = self.weightEntered
            
            return "\(initialDose! * range1)"
        }
        
        
        /// When calculation has two values to be multiplied
        
        let doseRange2 = {(initialDose: Double, FollowingDose: Double, range1: Double, range2: Double) -> String in
            let initialDose = self.weightEntered
            let FollowingDose = self.weightEntered
//            return "\(Int(initialDose! * range1)) - \(Int(FollowingDose! * range2))"
            
            return "\(initialDose! * range1) - \(FollowingDose! * range2)"
        }
        
        let doseRange2_Int = {(initialDose: Double, FollowingDose: Double, range1: Double, range2: Double) -> String in
            let initialDose = self.weightEntered
            let FollowingDose = self.weightEntered
            return "\(Int(initialDose! * range1))‑\(Int(FollowingDose! * range2))"
            
        }
        
        // Given a value to round and a factor to round to,
        // round the value to the nearest multiple of that factor.
        func round(_ value: Double, toNearest: Double) -> Double {
            return (value / toNearest ) * toNearest
        }
        
        
        // Pretreatment dosing
        let atropine = doseRange1(weightEntered!, 0.02)
        
        let lidocaine = doseRange1(weightEntered!, 1)
        let fentanyl = doseRange2_Int(weightEntered!, weightEntered!, 1, 2)
        let vecDefasiculating = doseRange1(weightEntered!, 0.01)
        let rocDefasiculating = doseRange2_Int(weightEntered!, weightEntered!, 0.06, 0.12)
        let glycopyrolate = doseRange2_Int(weightEntered!, weightEntered!, 0.1, 0.2)
        
        //Induction dosages
        let etomidate = doseRange1(weightEntered!, 0.3)
        let ketamine = doseRange1(weightEntered!, 1.5)
        let propofol = doseRange2_Int(weightEntered!, weightEntered!, 1, 2)
        let versed = doseRange2_Int(weightEntered!, weightEntered!, 0.1, 0.2)
        
        
        //Neuromuscular blockade agents
        let cisatricurium = doseRange1(weightEntered!, 0.2)
        let vecuronium = doseRange1(weightEntered!, 0.1)
        let rocuronium = doseRange2_Int(weightEntered!, weightEntered!, 0.6, 1.2)
        let succs = doseRange2_Int(weightEntered!, weightEntered!, 1, 1.5)
        
        
        //MARK: Guard function during the calculations.
        guard let myCalculations = weightEntered, myCalculations > 0  else {
            
            print("Cannot calculate because weight out of normal parameters")
            
            return }
        
        // Update the labels with the calculations
        kgWeight_Label.text = "\(weightEntered!) kg's \(weightEntered! * 2.2) lbs" // Updates the weight label
        
        // Pretreatment dosing
        atropine_Label.text = atropine
        lidocaine_Label.text = lidocaine
        fentanyl_Label.text = fentanyl
        rocuronium_Defasiculation_Label.text = rocDefasiculating
        vecuronium_Defasiculation_Label.text = vecDefasiculating
        glycopyrolate_Label.text = glycopyrolate
        
        //Induction dosages
        propofol_Label.text = propofol
        etomidate_Label.text = etomidate
        versed_Label.text = versed
        ketamine_Label.text = ketamine
        
        // Neuromuscular blocking agents
        succinycholine_Label.text = succs
        vecuronium_Label.text = vecuronium
        rocuronium_Label.text = rocuronium
        cisatricurium_Label.text = cisatricurium
        
        
            
    }
  
    @IBAction func dismissRSIViewController(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
 

}
