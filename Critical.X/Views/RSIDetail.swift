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
    
    
    
    @IBOutlet var unit_Lidocaine: UILabel!
    @IBOutlet var unit_Atropine: UILabel!
    @IBOutlet var unit_Fentanyl: UILabel!
    @IBOutlet var unit_Glycopyrolate: UILabel!
    @IBOutlet var unit_Etomidate: UILabel!
    @IBOutlet var unit_Ketamine: UILabel!
    @IBOutlet var unit_Versed: UILabel!
    @IBOutlet var unit_Propofol: UILabel!
    @IBOutlet var unit_Succinycholine: UILabel!
    @IBOutlet var unit_Vecuronium: UILabel!
    @IBOutlet var unit_Rocuronium: UILabel!
    @IBOutlet var unit_Cisatricurium: UILabel!
    
    
    
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
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        //Helper fuction
        rsiCalculation()
    }

//    @IBAction func SettingClick(_ sender: Any) {
//        let settingController = self.storyboard?.instantiateViewController(withIdentifier: "RSISetting") as! RSISetting
//        self.present(settingController, animated: true, completion: nil)
//    }
//    
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
        
//===================  Init and Get Parameters   =======================================
        let Parameters : NSDictionary!
        if ((UserDefaults.standard.object(forKey:"parameters")) != nil) {
            Parameters = UserDefaults.standard.object(forKey:"parameters") as! NSDictionary
        }
        else {
            Parameters =  ["atropine": 0.02, "lidocaine": 1, "fentanyl_min": 1, "fentanyl_max": 2, "vecDefasiculating": 0.01, "rocDefasiculating_min": 0.06, "rocDefasiculating_max": 0.12, "glycopyrolate_min": 0.1, "glycopyrolate_max": 0.2, "etomidate": 0.3, "ketamine": 1.5, "propofol_min": 1, "propofol_max": 2, "versed_min": 0.1, "versed_max": 0.2, "cisatricurium": 0.2, "vecuronium": 0.1, "rocuronium_min": 0.6, "rocuronium_max": 1.2, "succs_min": 1, "succs_max": 1.5]
            
            UserDefaults.standard.set(Parameters, forKey: "parameters")
            UserDefaults.standard.synchronize()
        }
/////////////////////////////////////////////////////////////////////////////////////////////
        
        // Pretreatment dosing
        let atropine = doseRange1(weightEntered!, Parameters.object(forKey: "atropine") as! Double)
        
        let lidocaine = doseRange1(weightEntered!, Parameters.object(forKey: "lidocaine") as! Double)
        let fentanyl = doseRange2_Int(weightEntered!, weightEntered!, Parameters.object(forKey: "fentanyl_min") as! Double, Parameters.object(forKey: "fentanyl_max") as! Double)
        let vecDefasiculating = doseRange1(weightEntered!, Parameters.object(forKey: "vecDefasiculating") as! Double)
        let rocDefasiculating = doseRange2_Int(weightEntered!, weightEntered!, Parameters.object(forKey: "rocDefasiculating_min") as! Double, Parameters.object(forKey: "rocDefasiculating_max") as! Double)
        let glycopyrolate = doseRange2_Int(weightEntered!, weightEntered!, Parameters.object(forKey: "glycopyrolate_min") as! Double, Parameters.object(forKey: "glycopyrolate_max") as! Double)
        
        //Induction dosages
        let etomidate = doseRange1(weightEntered!, Parameters.object(forKey: "etomidate") as! Double)
        let ketamine = doseRange1(weightEntered!, Parameters.object(forKey: "ketamine") as! Double)
        let propofol = doseRange2_Int(weightEntered!, weightEntered!, Parameters.object(forKey: "propofol_min") as! Double, Parameters.object(forKey: "propofol_max") as! Double)
        let versed = doseRange2_Int(weightEntered!, weightEntered!, Parameters.object(forKey: "versed_min") as! Double, Parameters.object(forKey: "versed_max") as! Double)
        
        
        //Neuromuscular blockade agents
        let cisatricurium = doseRange1(weightEntered!, Parameters.object(forKey: "cisatricurium") as! Double)
        let vecuronium = doseRange1(weightEntered!, Parameters.object(forKey: "vecuronium") as! Double)
        let rocuronium = doseRange2_Int(weightEntered!, weightEntered!, Parameters.object(forKey: "rocuronium_min") as! Double, Parameters.object(forKey: "rocuronium_max") as! Double)
        let succs = doseRange2_Int(weightEntered!, weightEntered!, Parameters.object(forKey: "succs_min") as! Double, Parameters.object(forKey: "succs_max") as! Double)
        
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        
        
        
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
        
        
        unit_Lidocaine.text = "\(Parameters.object(forKey: "lidocaine") as! Double) mg/kg"
        unit_Atropine.text = "\(Parameters.object(forKey: "atropine") as! Double) mg/kg"
        unit_Fentanyl.text = "\(Parameters.object(forKey: "fentanyl_min") as! Double)-\(Parameters.object(forKey: "fentanyl_max") as! Double) mcg/kg"
        unit_Glycopyrolate.text = "\(Parameters.object(forKey: "glycopyrolate_min") as! Double)-\(Parameters.object(forKey: "glycopyrolate_max") as! Double) mg/kg"
        unit_Etomidate.text = "\(Parameters.object(forKey: "etomidate") as! Double) mg/kg"
        unit_Ketamine.text = "\(Parameters.object(forKey: "ketamine") as! Double) mg/kg"
        unit_Versed.text = "\(Parameters.object(forKey: "versed_min") as! Double)-\(Parameters.object(forKey: "versed_max") as! Double) mg/kg"
        unit_Propofol.text = "\(Parameters.object(forKey: "propofol_min") as! Double)-\(Parameters.object(forKey: "propofol_max") as! Double) mcg/kg"
        unit_Succinycholine.text = "\(Parameters.object(forKey: "succs_min") as! Double)-\(Parameters.object(forKey: "succs_max") as! Double) mg/kg"
        unit_Vecuronium.text = "\(Parameters.object(forKey: "vecuronium") as! Double) mg/kg"
        unit_Rocuronium.text = "\(Parameters.object(forKey: "rocuronium_min") as! Double)-\(Parameters.object(forKey: "rocuronium_max") as! Double) mg/kg"
        unit_Cisatricurium.text = "\(Parameters.object(forKey: "cisatricurium") as! Double) mcg/kg"
        
    }
  
    @IBAction func dismissRSIViewController(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
}


