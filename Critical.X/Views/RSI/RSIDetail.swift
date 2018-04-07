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
    
    //mL's
    @IBOutlet weak var lidocaineMLs: UILabel!
    @IBOutlet weak var atropineMLs: UILabel!
    @IBOutlet weak var fentanylMLs: UILabel!
    @IBOutlet weak var vecDefascMLs: UILabel!
    @IBOutlet weak var glycopyrolateMLs: UILabel!
    @IBOutlet weak var rocDefascMLs: UILabel!
    @IBOutlet weak var vecMLs: UILabel!
    @IBOutlet weak var succsMLs: UILabel!
    @IBOutlet weak var rocRegularMLs: UILabel!
    @IBOutlet weak var nimbexMLs: UILabel!
    
    @IBOutlet weak var etomidateMLs: UILabel!
    @IBOutlet weak var ketamineMLs: UILabel!
    @IBOutlet weak var versedMLs: UILabel!
    @IBOutlet weak var propofolMLs: UILabel!
    
    
    
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
    @IBOutlet var unit_RocDefasc: UILabel!
    @IBOutlet var unit_VecDefasc: UILabel!
    //Radius on the Critical Logo
    @IBOutlet weak var criticalLogo : UIImageView! {
        didSet {
            criticalLogo.clipsToBounds = true
            criticalLogo.layer.cornerRadius = 5
        }
    }
    
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
        
        
        
        //===================  Initialize and Get Parameters   =======================================
        let Parameters : NSDictionary!
        
        if ((UserDefaults.standard.object(forKey:"parameters")) != nil) {
            
            Parameters = UserDefaults.standard.object(forKey:"parameters") as! NSMutableDictionary
                //NSDictionary.init(dictionary: UserDefaults.standard.object(forKey:"parameters") as! NSDictionary)
                //UserDefaults.standard.object(forKey:"parameters") as! NSMutableDictionary
                //UserDefaults.standard.object(forKey:"parameters") as! NSMutableDictionary
        }
        else {
            Parameters =  ["atropine": 0.02,"lidocaine": 1,"fentanyl_min": 1,"fentanyl_max": 2,"vecDefasiculating": 0.01,"rocDefasiculating_min": 0.06,"rocDefasiculating_max": 0.12,"glycopyrolate_min": 0.1,"glycopyrolate_max": 0.2, "etomidate": 0.3,"ketamine": 1.5,"propofol_min": 1,"propofol_max": 2, "versed_min": 0.1,"versed_max": 0.2,"cisatricurium": 0.2,"vecuronium": 0.1,"rocuronium_min": 0.6,"rocuronium_max": 1.2,"succs_min": 1,"succs_max": 1.5,"lidocaine_mgMl": 20,"mgPerML_atropine": 0.1,"mgPerML_fentanyl": 50.0,"mgPerML_vecDefasc": 1.0,"mgPerML_rocDefasc": 10.0,"hello": 0.2,"ml_etomidate" : 2.0,"ml_ketamine": 100.0, "ml_versed" : 5.0, "ml_propofol" : 10.0, "ml_succs" : 10.0,"ml_vec" : 1.0, "ml_roc": 10.0, "ml_cis" : 10.0]
           
           
           
            UserDefaults.standard.set(Parameters, forKey: "parameters")
            UserDefaults.standard.synchronize()
        }
        
        print("Dictionary Values")
        
        for (key,value) in Parameters {
            
            print("\(key) : \(value)")
        }
        
        /// Closure When calculation has one value to be multiplied
        let doseRange1 = {(initialDose: Double, range1: Double) -> (String) in
            let initialDose = self.weightEntered
            
            return "\(initialDose! * range1)"
        }
        
        let doseRange1mL = {(initialDose: Double, permL: Double) -> (String) in
            let initialDose = self.weightEntered
            
            return "\(Double(initialDose! / permL))"
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
        // Closure to determine the mLs to be delivered to a patient.
        
        let doseRange2_mL = {(initialDose: Double, FollowingDose: Double, range1: Double, range2: Double,permL: Double) -> String in
            let initialDose = self.weightEntered
            let FollowingDose = self.weightEntered
            return "\(Double((initialDose! * range1) / permL)) ‑ \(Double((FollowingDose! * range2) / permL)) mL's"
            
        }
        
        let doseRange1_mL = {(initialDose: Double, range1: Double,permL: Double) -> String in
            let initialDose = self.weightEntered
            let FollowingDose = self.weightEntered
            return "\(Double((initialDose! * range1) / permL)) mL's"
            
        }
        
        // Given a value to round and a factor to round to,
        // round the value to the nearest multiple of that factor.
        func round(_ value: Double, toNearest: Double) -> Double {
            return (value / toNearest ) * toNearest
        }
        
        
        //Function determines the mL's ony from medications without a range. Single dose
        func mL1_DoseCalculation (FinalDose: Double, PermL: Double ) -> String {
            
            return "\(Double(FinalDose / PermL)) mL's"
            
        }
        
        
        
       
        /////////////////////////////////////////////////////////////////////////////////////////////
        
        //==========Pretreatment dosing
        let atropine = doseRange1(weightEntered!, Parameters.object(forKey: "atropine") as! Double)
        
        let lidocaine = doseRange1(weightEntered!, Parameters.object(forKey: "lidocaine") as! Double)
        
        let fentanyl = doseRange2_Int(weightEntered!, weightEntered!, Parameters.object(forKey: "fentanyl_min") as! Double, Parameters.object(forKey: "fentanyl_max") as! Double)
        
        
        let vecDefasiculating = doseRange1(weightEntered!, Parameters.object(forKey: "vecDefasiculating") as! Double)
        
        
        let rocDefasiculating = doseRange2_Int(weightEntered!, weightEntered!, Parameters.object(forKey: "rocDefasiculating_min") as! Double, Parameters.object(forKey: "rocDefasiculating_max") as! Double)
        
        
        let glycopyrolate = doseRange2_Int(weightEntered!, weightEntered!, Parameters.object(forKey: "glycopyrolate_min") as! Double, Parameters.object(forKey: "glycopyrolate_max") as! Double)
        
        
        
        
        //===========Induction dosages
        let etomidate = doseRange1(weightEntered!, Parameters.object(forKey: "etomidate") as! Double)
        
        
        let ketamine = doseRange1(weightEntered!, Parameters.object(forKey: "ketamine") as! Double)
        
        
        let propofol = doseRange2_Int(weightEntered!, weightEntered!, Parameters.object(forKey: "propofol_min") as! Double, Parameters.object(forKey: "propofol_max") as! Double)
        
        
        let versed = doseRange2_Int(weightEntered!, weightEntered!, Parameters.object(forKey: "versed_min") as! Double, Parameters.object(forKey: "versed_max") as! Double)
        
        
        
        
        //========Neuromuscular blockade agents
        let cisatricurium = doseRange1(weightEntered!, Parameters.object(forKey: "cisatricurium") as! Double)
        
        
        let vecuronium = doseRange1(weightEntered!, Parameters.object(forKey: "vecuronium") as! Double)
        
        
        let rocuronium = doseRange2_Int(weightEntered!, weightEntered!, Parameters.object(forKey: "rocuronium_min") as! Double, Parameters.object(forKey: "rocuronium_max") as! Double)
        
        
        let succs = doseRange2_Int(weightEntered!, weightEntered!, Parameters.object(forKey: "succs_min") as! Double, Parameters.object(forKey: "succs_max") as! Double)
        
        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        
        
        
        //MARK: Guard function during the calculations.
        guard let myCalculations = weightEntered, myCalculations > 0  else {
            
            print("Cannot calculate because weight out of normal parameters")
            
            return }
        
       
        //MARK:========= Update the labels with the calculations
        kgWeight_Label.text = "\(weightEntered!) kg's \(weightEntered! * 2.2) lbs" // Updates the weight label
        
        // Pretreatment dosing
        atropine_Label.text = atropine
        atropineMLs.text =  mL1_DoseCalculation(FinalDose:(Double (atropine))!, PermL: Parameters.object(forKey: "mgPerML_atropine") as! Double)
        // atropine = 10 mg in 1 Ml = 0.1 mg/ml
       
        
        lidocaine_Label.text = lidocaine
        // Rounds to the 1st decimal place
        let lido =  String(format:"%.1f",Parameters.object(forKey: "lidocaine_mgMl") as! Double)
        lidocaineMLs.text =  mL1_DoseCalculation(FinalDose:(Double (lidocaine))!, PermL: Parameters.object(forKey: "lidocaine_mgMl") as! Double)
        // Lidocaine 100mg/5 mL =  20mg/mL
        
        
        
        fentanyl_Label.text = fentanyl
        fentanylMLs.text = doseRange2_mL (weightEntered!, weightEntered!, Parameters.object(forKey: "fentanyl_min") as! Double, Parameters.object(forKey: "fentanyl_max") as! Double, Parameters.object(forKey: "mgPerML_fentanyl") as! Double)
        // fent = 1000 mg in 20 Ml = 50 mg/ml
       
        
        
        
        rocuronium_Defasiculation_Label.text = rocDefasiculating
        rocDefascMLs.text = doseRange2_mL (weightEntered!, weightEntered!, Parameters.object(forKey: "rocDefasiculating_min") as! Double, Parameters.object(forKey: "rocDefasiculating_max") as! Double, Parameters.object(forKey: "mgPerML_rocDefasc") as! Double)
        // Roc = 50 mg in 5 Ml = 10 mg/ml
        
        
        vecuronium_Defasiculation_Label.text = vecDefasiculating
        vecDefascMLs.text = mL1_DoseCalculation(FinalDose: (Double (vecDefasiculating))!, PermL:Parameters.object(forKey: "mgPerML_vecDefasc") as! Double)
        // Vec = 10 mg in 10 Ml = 1 mg/ml
        
        
        glycopyrolate_Label.text = glycopyrolate
        glycopyrolateMLs.text = doseRange2_mL (weightEntered!, weightEntered!, Parameters.object(forKey: "glycopyrolate_min") as! Double, Parameters.object(forKey: "glycopyrolate_max") as! Double, Parameters.object(forKey: "hello") as! Double)
        // glycopyrolate = 4 mg in 20 Ml = 0.2 mg/ml
        
        
        // MARK:=================Induction dosages
        propofol_Label.text = propofol
        propofolMLs.text =  doseRange2_mL (weightEntered!, weightEntered!, Parameters.object(forKey: "propofol_min") as! Double, Parameters.object(forKey: "propofol_max") as! Double, 10)
        // propofol = 200 mg in 20 Ml = 10 mg/ml
        
        etomidate_Label.text = etomidate
        etomidateMLs.text =  mL1_DoseCalculation(FinalDose: (Double (etomidate))!, PermL: Parameters.object(forKey:"ml_etomidate") as? Double ?? 2 )
        print(" etomidate key dose = \(Parameters.object(forKey: "ml_etomidate") as? Double)")
        // etomidate = 20 mg in 10 Ml = 2 mg/ml
        
        versed_Label.text = versed
        versedMLs.text = doseRange2_mL (weightEntered!, weightEntered!, Parameters.object(forKey: "versed_min") as! Double, Parameters.object(forKey: "versed_max") as! Double, Parameters.object(forKey: "ml_versed") as? Double ?? 5)
        // versed = 10 mg in 2 Ml = 5 mg/ml
        
        print(" versed key dose = \(Parameters.object(forKey: "ml_versed") as? Double)")
        
        ketamine_Label.text = ketamine
        ketamineMLs.text = mL1_DoseCalculation(FinalDose: (Double (ketamine))!, PermL: 100)
        // ketamine = 200 mg in 20 Ml = 10 mg/ml
        
        
        
        
        
        // ============ Neuromuscular blocking agents
        succinycholine_Label.text = succs
        succsMLs.text = doseRange2_mL (weightEntered!, weightEntered!, Parameters.object(forKey: "succs_min") as! Double, Parameters.object(forKey: "succs_max") as! Double, 20)
        // succs = 200 mg in 10 Ml = 20 mg/ml
        
        vecuronium_Label.text = vecuronium
        vecMLs.text = mL1_DoseCalculation(FinalDose: (Double (vecuronium))!, PermL:1 )
        // Vec = 10 mg in 10 Ml = 1 mg/ml
        
        rocuronium_Label.text = rocuronium
        rocRegularMLs.text = doseRange2_mL (weightEntered!, weightEntered!, Parameters.object(forKey: "rocuronium_min") as! Double, Parameters.object(forKey: "rocuronium_max") as! Double, 10)
        // Roc = 50 mg in 5 Ml = 10 mg/ml
        
        cisatricurium_Label.text = cisatricurium
        nimbexMLs.text = mL1_DoseCalculation(FinalDose: (Double (cisatricurium))!, PermL:10 )
        // nimbex = 200 mg in 20 Ml = 10 mg/ml
        
        
        
        
        
        
        
        // Updates the labels based on the parameters that are changed. 
        unit_Lidocaine.text = "\(Parameters.object(forKey: "lidocaine") as! Double) mg/kg | \(Parameters.object(forKey: "lidocaine_mgMl") as! Double) mg/mL"
        
        unit_Atropine.text = "\(Parameters.object(forKey: "atropine") as! Double) mg/kg | \(Parameters.object(forKey: "mgPerML_atropine") as! Double) mg/mL"
        
        
        unit_Fentanyl.text = "\(Parameters.object(forKey: "fentanyl_min") as! Double)-\(Parameters.object(forKey: "fentanyl_max") as! Double) mcg/kg | \(Parameters.object(forKey: "mgPerML_fentanyl") as! Double) mcg/mL"
        
        
        unit_Glycopyrolate.text = "\(Parameters.object(forKey: "glycopyrolate_min") as! Double) - \(Parameters.object(forKey: "glycopyrolate_max") as! Double) mg/kg | \(Parameters.object(forKey: "hello") as! Double) mg/mL"
        
        print(" Glyco\(Parameters.object(forKey: "hello") as! Double) mg/mL")
            
        unit_Etomidate.text = "\(Parameters.object(forKey: "etomidate") as! Double) mg/kg | \(Parameters.object(forKey: "ml_etomidate") as! Double) mg/mL"
        
        
        unit_Ketamine.text = "\(Parameters.object(forKey: "ketamine") as! Double) mg/kg | \(Parameters.object(forKey: "ml_ketamine") as! Double) mg/mL"
        
        
        unit_Versed.text = "\(Parameters.object(forKey: "versed_min") as! Double)-\(Parameters.object(forKey: "versed_max") as! Double) mg/kg | \(Parameters.object(forKey: "ml_versed") as! Double) mg/mL"
        
        
        unit_Propofol.text = "\(Parameters.object(forKey: "propofol_min") as! Double)-\(Parameters.object(forKey: "propofol_max") as! Double) mcg/kg | \(Parameters.object(forKey: "ml_propofol") as! Double) mcg/mL"
        
        
        unit_Succinycholine.text = "\(Parameters.object(forKey: "succs_min") as! Double)-\(Parameters.object(forKey: "succs_max") as! Double) mg/kg | \(Parameters.object(forKey: "ml_succs") as! Double) mg/mL"
        
        
        unit_Vecuronium.text = "\(Parameters.object(forKey: "vecuronium") as! Double) mg/kg | \(Parameters.object(forKey: "ml_vec") as! Double) mg/mL"
        
        
        
        unit_Rocuronium.text = "\(Parameters.object(forKey: "rocuronium_min") as! Double)-\(Parameters.object(forKey: "rocuronium_max") as! Double) mg/kg | \(Parameters.object(forKey: "ml_roc") as! Double) mg/mL"
        
        
        unit_Cisatricurium.text = "\(Parameters.object(forKey: "cisatricurium") as! Double) mcg/kg | \(String(describing: Parameters.object(forKey: "ml_cis") as! Double)) mg/mL"
        
        
        unit_VecDefasc.text = "\(Parameters.object(forKey: "vecuronium") as! Double) mcg/kg | \(Parameters.object(forKey: "mgPerML_vecDefasc") as! Double) mg/mL"

        unit_RocDefasc.text = "\(Parameters.object(forKey: "rocDefasiculating_min") as! Double)-\(Parameters.object(forKey: "rocDefasiculating_max") as! Double) mg/kg | \(Parameters.object(forKey: "mgPerML_rocDefasc") as! Double) mg/mL"

       
        
    }
    
    @IBAction func dismissRSIViewController(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
}


