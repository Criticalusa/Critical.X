//
//  Pediatric_DetailVC.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 2/4/19.
//  Copyright © 2019 Jadie Barringer III. All rights reserved.
//

import UIKit

// Extension to format the strings to certain decimal places.



class Pediatric_DetailVC: UIViewController {

    //Public Variables to be passed
    public var weightEntered: Double?
    
    // Outlets and Actions
    @IBOutlet weak var criticalImageView: UIImageView!
    @IBOutlet weak var bicarbTitleLabel: UILabel!
    @IBOutlet weak var sedationParalytics: UIView!
    @IBOutlet weak var ventImageView: UIView!
    @IBOutlet weak var cardiacResuscitation: UIView!
    @IBOutlet weak var medicationsOther: UIView!
    @IBOutlet weak var vitalsView: UIView!
    @IBOutlet weak var equipmentUIView: UIView!
    @IBOutlet weak var mgDoseWeightLabel: UILabel!
    @IBOutlet weak var disMissBtn: UIButton!
    
    @IBOutlet weak var respRate_lbl: UILabel!
    @IBOutlet weak var weightCalcLabel: UILabel!
    @IBOutlet weak var defibrillationTitleLabel: UILabel!
    @IBOutlet weak var cardioversionTitleLabel: UILabel!
    @IBOutlet weak var weightLabelforMeds: UILabel!
    
    @IBOutlet weak var hypotensiveLabel: UILabel!
    @IBOutlet weak var age_Label: UILabel!
    @IBOutlet weak var systolic: UILabel!
    @IBOutlet weak var diastolic: UILabel!
    @IBOutlet weak var heartRate: UILabel!
    
    //MARK: SEDATION AND PARALYTICS OUTLETS
    @IBOutlet weak var etomidate_Dose: UILabel!
    @IBOutlet weak var succinylcholine_Dose: UILabel!
    @IBOutlet weak var vecuronium_DOse: UILabel!
    @IBOutlet weak var rocuronium_Dose: UILabel!
    @IBOutlet weak var ketamine_Dose: UILabel!
    @IBOutlet weak var versed_Dose: UILabel!
    @IBOutlet weak var propofol_Dose: UILabel!
    @IBOutlet weak var fentanyl_Dose: UILabel!
    @IBOutlet weak var ativan_Dose: UILabel!
    @IBOutlet weak var mgSulfate_Dose: UILabel!
    
    //ML's LABELS- Sedation and Paralytics
    @IBOutlet weak var etomidate_ML: UILabel!
    @IBOutlet weak var succinylcholine_ML: UILabel!
    @IBOutlet weak var vecuronium_ML: UILabel!
    @IBOutlet weak var rocuronium_ML: UILabel!
    @IBOutlet weak var ketamine_ML: UILabel!
    @IBOutlet weak var versed_ML: UILabel!
    @IBOutlet weak var propofol_ML: UILabel!
    @IBOutlet weak var fentanyl_ML: UILabel!
    @IBOutlet weak var ativan_ML: UILabel!
    @IBOutlet weak var magSulfate_ML: UILabel!
    
    
    // Detail mg/mL outlets
    @IBOutlet weak var etomidate_DetailDoseLabel: UILabel!
    @IBOutlet weak var succinylcholine_DetailDoseLabel: UILabel!
    @IBOutlet weak var vecuronium_DetailDoseLabel: UILabel!
    @IBOutlet weak var rocuronium_DetailDoseLabel: UILabel!
    @IBOutlet weak var ketamine_DetailDoseLabel: UILabel!
    @IBOutlet weak var versed_DetailDoseLabel: UILabel!
    @IBOutlet weak var propofol_DetailDoseLabel: UILabel!
    @IBOutlet weak var fentanyl_DetailDoseLabel: UILabel!
    @IBOutlet weak var ativan_DetailDoseLabel: UILabel!
    @IBOutlet weak var magSulfate_DetailDoseLabel: UILabel!
    @IBOutlet weak var morphine_Detail: UILabel!
    @IBOutlet weak var mannitol_Detail: UILabel!
    
    
    //MARK: - CARDIAC RESUSCITATION OUTLETS
    @IBOutlet weak var amiodarone_Dose: UILabel!
    @IBOutlet weak var adenosine_Initial_Dose: UILabel!
    @IBOutlet weak var adenosine_Repeat_Dose: UILabel!
    @IBOutlet weak var atropine_Dose: UILabel!
    @IBOutlet weak var bicarbonate_Dose: UILabel!
    @IBOutlet weak var calcium_Dose: UILabel!
    @IBOutlet weak var caGluconate_Dose: UILabel!
    
    
    @IBOutlet weak var epinephrine_Dose: UILabel!
    @IBOutlet weak var lidocaine_Dose: UILabel!
    @IBOutlet weak var vasopressin_Dose: UILabel!
    @IBOutlet weak var magSulfate_Dose: UILabel!
    
    // ML's Cardiac Resuscitation
    @IBOutlet weak var amiodarone_ML: UILabel!
    @IBOutlet weak var adenosine_InitialML_Dose: UILabel!
    @IBOutlet weak var adenosine_RepeatML_Dose: UILabel!
    @IBOutlet weak var atropine_ML: UILabel!
    @IBOutlet weak var bicarb_ML: UILabel!
    @IBOutlet weak var calcium_ML: UILabel!
    @IBOutlet weak var dextrose12_5_ML: UILabel!
    @IBOutlet weak var dextrose25_ML: UILabel!
    @IBOutlet weak var dextrose10_ML: UILabel!
    @IBOutlet weak var dextrose5_ML: UILabel!
    @IBOutlet weak var caGluconate_ML: UILabel!
    @IBOutlet weak var epinephrine_ML: UILabel!
    @IBOutlet weak var lidocaine_ML: UILabel!
    @IBOutlet weak var vasopressin_ML: UILabel!
    
    // Other medications Outlets
    
    // Detail mg/mL outlets
    @IBOutlet weak var amiodarone_DetailDoseLabel: UILabel!
    @IBOutlet weak var adenosine_Initial_DetailDoseLabel: UILabel!
    @IBOutlet weak var adenosine_Repeat_DetailDoseLabel: UILabel!
    @IBOutlet weak var atropine_DetailDoseLabel: UILabel!
    @IBOutlet weak var bicarbonate_DetailDoseLabel: UILabel!
    @IBOutlet weak var calcium_DetailDoseLabel: UILabel!
    @IBOutlet weak var dextrose12_5_DetailDoseLabel: UILabel!
    @IBOutlet weak var dextrose25_DetailDoseLabel: UILabel!
    @IBOutlet weak var dextrose10_DetailDoseLabel: UILabel!
    @IBOutlet weak var dextrose5_DetailDoseLabel: UILabel!
    @IBOutlet weak var caGluconate_DetailDoseLabel: UILabel!
    @IBOutlet weak var epinephrine_DetailDoseLabel: UILabel!
    @IBOutlet weak var lidocaine_DetailDoseLabel: UILabel!
    @IBOutlet weak var vasopressin_DetailDoseLabel: UILabel!
    
    
    
    // MARK: - Equipment labels
    @IBOutlet weak var ngTube_lbl: UILabel!
    @IBOutlet weak var chestTube_lbl: UILabel!
    @IBOutlet weak var opa_lbl: UILabel!
    @IBOutlet weak var foleyCath_lbl: UILabel!
    @IBOutlet weak var laryngescope_lbl: UILabel!
    @IBOutlet weak var ett_cuffed_lbl: UILabel!
    @IBOutlet weak var ett_Uncuffed_lbl: UILabel!
    @IBOutlet weak var centralLine_lbl: UILabel!
    
    // MARK: Ventilator Outlets
    @IBOutlet weak var peep_lbl: UILabel!
    @IBOutlet weak var ventMode_lbl: UILabel!
    @IBOutlet weak var ventRate_lbl: UILabel!
    @IBOutlet weak var ventTV_lbl: UILabel!
    @IBOutlet weak var iTime_lbl: UILabel!
    @IBOutlet weak var pip_lbl: UILabel!
    
    @IBOutlet weak var defibrillation_Lbl: UILabel!
    @IBOutlet weak var cardioversion_lbl: UILabel!
    
    
    
    
    
    
    
    
    
    
    // Medication profile dosages
    @IBOutlet weak var glucagon_Label: UILabel!
    @IBOutlet weak var caGluconate: UILabel!
    @IBOutlet weak var ondansetron_Label: UILabel!
    @IBOutlet weak var hydromorphone_Label: UILabel!
    @IBOutlet weak var labetalol_Label: UILabel!
    @IBOutlet weak var cardene_Label: UILabel!
    @IBOutlet weak var albuterol_label: UILabel!
    @IBOutlet weak var albumin_label: UILabel!
    @IBOutlet weak var hydrocortisone_label: UILabel!
    @IBOutlet weak var soluMedrol_Label: UILabel!
    @IBOutlet weak var milrinone_Label: UILabel!
    @IBOutlet weak var nitroglycerine_Label: UILabel!
    @IBOutlet weak var nipride_Label: UILabel!
    @IBOutlet weak var levophed_Label: UILabel!
    @IBOutlet weak var precedex_Label: UILabel!
    @IBOutlet weak var lasix_Label: UILabel!
    @IBOutlet weak var narcan_Label: UILabel!
    @IBOutlet weak var benadryl_Label: UILabel!
    @IBOutlet weak var mannitol_Dose: UILabel!
    @IBOutlet weak var mannitol_Ml: UILabel!
    @IBOutlet weak var morphine_Dose: UILabel!
    @IBOutlet weak var morphine_mL: UILabel!
    @IBOutlet weak var normalSalineBolus_Label: UILabel!
    @IBOutlet weak var decardron_Label: UILabel!
    
    
    
    /// Drip Clculations
    
    @IBOutlet weak var vasopressin_Drip_Label: UILabel!
    @IBOutlet weak var dopamineDrip_Label: UILabel!
    @IBOutlet weak var dobutamineDrip_Label: UILabel!
    @IBOutlet weak var epinephrineDrip_Label: UILabel!
    @IBOutlet weak var   lidocaineDrip_Label: UILabel!
    
    
    
    
    // MARK: - Load the VIEW
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Rounds the corners of the View
        vitalsView.clipsToBounds = true
        vitalsView.layer.cornerRadius = 15
        
        equipmentUIView.clipsToBounds = true
        equipmentUIView.layer.cornerRadius = 15
        
        ventImageView.clipsToBounds = true
        ventImageView.layer.cornerRadius = 15
        
        criticalImageView.clipsToBounds = true
        criticalImageView.layer.cornerRadius = 5
        
        // Takes the button and makes it into a circle
        disMissBtn.layer.cornerRadius = disMissBtn.frame.size.width / 2
        disMissBtn.layer.cornerRadius = disMissBtn.frame.size.width / 2
        
    }
    
    
    //MARK: Calculates 1 Dose
    func calculateDoseOne (Dose: Double)-> Double {
        
        // Takes the weightEntered entered in the textField and uses it in the function
        
        let result = weightEntered! * Dose
        return result
        //return String(format: "%.0f", result) as String
    }
    
    //MARK: Calculates 2 Dose range as INT
    func calculateDoseOne_Int (Dose: Double)-> String {
        
        // Takes the weightEntered entered in the textField and uses it in the function
        let patientWeight = weightEntered
        
        return "\(Int(patientWeight! * Dose))"
    }
    
    
    //MARK: Calculates 2 Dose Range as double
    func calculateDoseTwo (DoseMin: Double, _DoseMax: Double)-> String {
        
        // Takes the weightEntered entered in the textField and uses it in the function
        // Set the calculated result
        let result = (weightEntered! * DoseMin)
        let result2 = (weightEntered! * _DoseMax)
        // Not we have to format the string to get one sig fig.
        let finalDose1 = String (format: "%.1f", result)
        let finalDose2 = String (format: "%.1f",result2)
        let dash = " - " // adds a dash between the numbers to the final calculation.
        
        // Since the final result is a string, here we add the final.
        return finalDose1 + dash + finalDose2
    }
    
    
    
    func convertMLfromCalculatedDose (patientDosePerKG: Double, doseIn_Mg_G: Double, mL: Double) -> Double {
        
        
        // First we get the dose to the patient.
        let drugDose = weightEntered! * patientDosePerKG
        let concentration = doseIn_Mg_G / mL
        let result = drugDose / concentration
        
        
        return result
        
        
    }
    
    //MARK: Calculates 2 Dose Range as String
    func calculateDoseTwoML (DoseMin: Double, finalConcentrationPer_ML: Double, _DoseMax: Double) -> String {
        
        // Takes the weightEntered entered in the textField and uses it in the function
        
        // Lets calculated the dose from weight
        let resultDose = (weightEntered! * DoseMin )
        let result2Dose = (weightEntered! * _DoseMax )
        
        // Here we calcualte the mL to be delivered by dividing dose by final concentration/ml.
        let result = resultDose / finalConcentrationPer_ML
        let result2 = result2Dose / finalConcentrationPer_ML
        
        // Not we have to format the string to get cut it down to one sig fig.
        let finalDose1 = String (format: "%.1f", result)
        let finalDose2 = String (format: "%.1f",result2)
        let dash = " - " // adds a dash between the numbers to the final calculation.
        
        // Since the final result is a string, here we add the final.
        return finalDose1 + dash + finalDose2
    }
    
    
    
    func calculateOneDose_Bicarb_DecimalMls(Dosage: Double, mL: Double) -> String {
        let result = (weightEntered! * mL)
        let finalDose = String (format: "%.1f", result)
        
        return finalDose
        
    }
    
    func glucoseCalculation(DoseInGrams: Double, dextrosePercentage: Double) -> String {
        
        let weightDoseCalculation = (weightEntered! * DoseInGrams) * 1000
        let secondStep = weightDoseCalculation / dextrosePercentage
        let finalWeightDoseCalculation =  secondStep.oneDecimalPlace
        
        return finalWeightDoseCalculation
    }
    
    
    
    
    
    func defib(Weight: Double, EnergyOne: Double, EnergyTwo: Double) -> String {
        
        //Declares weight as the weight entered
        let Weight = weightEntered
        
        // takes the weight eneterd initially and multiplies it x 0.5 and 1 J to get the dose.
        return "\(Weight! * EnergyOne) - \(Weight! * EnergyTwo)"
    }
    
    
    
    
    // MARK: - WHERE THE VIEW APPEARS
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        //Helper fuctions
        weightLabelforMeds.text = "Calculated at \n\(String(describing: weightEntered!)) kg's"
        calculation(); calculateAllPediatricFactors()
        
    }
    
    
    @IBAction func dismissButton(_ sender: Any) {
        
        dismiss(animated: true, completion: nil); print("View Controller was dismissed")
    }
    
    // MARK: - ALL PEDIATRIC CALCULATIONS BASED ON THE WEIGHT RANGE
    
    func calculation() {
        guard weightEntered != nil else { // Code executed if the textField is left empty
            
            print ("No weight has been entered") //Print statement on the console
            respRate_lbl.text = "Please enter a valid weight value" // Changes the textLabel's language
            respRate_lbl.textColor = UIColor.black // Changes the textColor of the label
            return}
        
        return pediatricDosageCalcs()
    }
    
    
    
    
    
    
    
    // The background color will change depending on the weight thats initially entered in the weight field.
    func calculateAllPediatricFactors()  {
        
        // Calculates the conversion from Kg's to Lbs
        let pounds: Double? = (weightEntered)! * 2.2
        
        
        
        let ventTVRange = {(initialTV: Double, finalTV: Double) -> (String) in
            let weight = self.weightEntered
            let initalTV: Double = weight! * initialTV.rounded()
            let finalTV: Double = weight! * finalTV.rounded()
            
            print("Tidal Volume is \(initalTV) - \(finalTV)")
            
            return "\(Int (initalTV.rounded())) - \(Int (finalTV.rounded()))"
        }
        
        // Sets the label for the TV text label from the closure above.
        ventTV_lbl.text = ventTVRange(6,8)
        
        
        
        /// Closure When calculation has one value to be multiplied
        let doseRange1 = {(initialDose: Double, range1: Double) -> (String) in
            let initialDose = self.weightEntered
            
            return "\(initialDose! * range1)"
        }
        
        /// When calculation has two values to be multiplied
        let doseRange2 = {(initialDose: Double, FollowingDose: Double, range1: Double, range2: Double) -> String in
            let initialDose = self.weightEntered
            let FollowingDose = self.weightEntered
            return "\(initialDose! * range1)-\(FollowingDose! * range2)"
        }
        
        
        //MARK: Drug Dosage Calculations
        let calculation = weightEntered    /// The number value entered in the textField
        
        
        
        // MARK: SWITCH IMPLEMENTATION ON DIFFERENT WEIGHT RANGES.
        
        switch weightEntered {
            
        case (0..<3)?:
         case_03()
            
        case (3..<6)?:
            case_ThreeToSix()
            
        case (6..<8)?:
            case_SixToEight()
            
        case (8..<9)?: //Infant
            case_EightToNine()
            
        case (10..<12)?: //Toddler
            case_TenToTwelve()
            
        case (12..<15)?: //Small child
            case_TwelveToFifteen()
            
        case (15..<18)?: //Child
            case_FifteenToEighteen()
            
        case (19..<23)?: //Child
            case_NinteenToTwentyThree()
            
        case (24..<29)?: //Large child
            case_TwentyFourToTwentyNine()
            
        case (30..<37)?: // Adult
            case_ThirtyToThirtySeven()
            
        case (38..<50)?: // Large Adult 40
            case_FourtyToFifty()
            
        case (50..<80)?: // Large Adult 50
            case_FiftyToEighty()
            
        default:
            break
        }
    }
    
    //MARK: Calculates Age from the Weight entered
    func approximateAgeFromWeight (weight: Double)-> String {
        
        let weight = weightEntered
        
        //            while weightEntered! < 1.0 {
        //                weight! /=  100.0}
        
        /// To calculate age under 1yr =  2(kg) - 9
        let age: Double = Double(2 * weight!) - 9
        
        if age < 1.0 {
            
            print("Newborn \(age) displayed because the age is less than 1 month")
            return "Newborn"
        } else if age == 1 {
            return "Approx. \(Int(age)) month old."
        }
        return "Approx. \(Int(age)) months old."
        
    }
    //return "The approximate age at \(weight!)kg's is \(age) months"
    
    
    //MARK: Calculate the patient's age from weight 1 – 5
    func approximateAgeFromWeight_1_5 (weight: Double)-> String {
        
        let weight = weightEntered
        /// To calculate age alPlacesunder 1yr =  2(kg) - 9
        let age = (weight! / 2) - 5
        // If the age is less than 1 month, then we'll pring newborn.
        
        if age == 1 {
            
            return "The expected age at \(weight!) kg's is approx. \(Int(age)) yr. old."
            
        } else {
            
            return "Approx. \(Int(age)) y/o."
        }
        
    }
    
    
    //MARK: Calculate the patient's age from weight 5 to 14
    func approximateAgeFromWeight_5_14 (weight: Double)-> String {
        
        let weight = weightEntered
        
        /// To calculate age over 5yr = (weight! / 4)
        let age = (weight! / 4)
        
        return "Approx. \(Int(age)) y/o."
    }
    
    
}// End of class
