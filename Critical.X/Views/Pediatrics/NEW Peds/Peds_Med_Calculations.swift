//
//  File.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 2/4/19.
//  Copyright © 2019 Jadie Barringer III. All rights reserved.
//

import Foundation

extension Pediatric_DetailVC {
    
    
    func pediatricDosageCalcs() {
        
        let finalCalc = Int (weightEntered! * 10)
        respRate_lbl.text = "\(finalCalc)"
        
        
        //MARK:Adenosine Dosages
        let adenosine_Initial: Double? =  calculateDoseOne(Dose: 0.1)
        let adenosine_Repeat: Double? =  calculateDoseOne(Dose: 0.2)
        
        guard let _ = adenosine_Initial, let _ = adenosine_Repeat else { return}
        // What happens when etomidate is not nil.
        
        // Sets the detail label with the dose and mL amount
        adenosine_Initial_DetailDoseLabel.text = "0.1 mg/kg  | 3 mg/mL"
        adenosine_Repeat_DetailDoseLabel.text = "0.2 mg/kg  | 3 mg/mL"
        
        // Calculates the mL's to be given from the calculated dose
        let adenosineInitialMls = convertMLfromCalculatedDose(patientDosePerKG: 0.1, doseIn_Mg_G: 3, mL: 1)
        // calculates the second dose
        let adenosineRepeat_mLs = convertMLfromCalculatedDose(patientDosePerKG: 0.2, doseIn_Mg_G: 3, mL: 1) // Enter the mg/ mL here.
        
        // Sets both the dose and ML amount
        adenosine_Initial_Dose.text = String.localizedStringWithFormat("%.1f", adenosine_Initial!)
        adenosine_Repeat_Dose.text = String.localizedStringWithFormat("%.1f", adenosine_Repeat!)
        
        adenosine_InitialML_Dose.text =  "\(adenosineInitialMls.oneDecimalPlace)"
        adenosine_RepeatML_Dose.text =  "\(adenosineRepeat_mLs.oneDecimalPlace)"
        
        // If adenosine dose is more than the max dose of 6 mg. Make the following changes.
        if adenosine_Repeat! > 12.0 || adenosine_Initial! > 6.0 {
            
            
            adenosine_Initial_Dose.textColor = FlatColor.BackgroundColor.Red.toUIColor()
            adenosine_Repeat_Dose.textColor = FlatColor.BackgroundColor.Red.toUIColor()
            adenosine_Repeat_DetailDoseLabel.text = "Max Dose Inital 6 mg, Repeat 12 mg"
            adenosine_Repeat_DetailDoseLabel.textColor = FlatColor.BackgroundColor.Red.toUIColor()
            
        }
        
        print("Adenosine Initial Dose is \(adenosine_Initial!.oneDecimalPlace), Repeat is \(adenosine_Repeat!)")
        
        
        //MARK: AMIODARONE
        //Guard function from the closure Amiodarone.
        let amio: Double? =  calculateDoseOne(Dose: 5.0)
        guard let _ = amio else { return}
        // What happens when etomidate is not nil.
        
        // Sets the detail label with the dose and mL amount
        amiodarone_DetailDoseLabel.text = "5 mg/kg  | 50 mg/mL"
        
        // Calculates the mL's to be given from the calculated dose
        let amio_mLs = convertMLfromCalculatedDose(patientDosePerKG: 5, doseIn_Mg_G: 50, mL: 1)
        
        // Sets both the dose and ML amount
        amiodarone_Dose.text = String.localizedStringWithFormat("%.1f", amio!)
        amiodarone_ML.text = "\(amio_mLs.oneDecimalPlace)"
        print("Amio Dose is \(amio!.oneDecimalPlace)")
        
        
        
        
        //MARK: ATROPINE
        //Guard function from the closure Atropine.
        let atropineSulfate: Double? =  calculateDoseOne(Dose: 0.02)
        guard let _ = atropineSulfate else { return}
        // What happens when etomidate is not nil.
        
        
        // Calculates the mL's to be given from the calculated dose
        let atropineSulfate_mLs = convertMLfromCalculatedDose(patientDosePerKG: 0.02, doseIn_Mg_G: 0.1, mL: 1)
        
        
        // Sets both the dose and ML amount
        atropine_Dose.text = String.localizedStringWithFormat("%.2f", atropineSulfate!)
        atropine_ML.text = "\(atropineSulfate_mLs.oneDecimalPlace)"
        
        // Sets the detail label with the dose and mL amount
        atropine_DetailDoseLabel.text = "0.02 mg/kg  | 0.1 mg/mL"
        
        print("Atropine dose is \(atropineSulfate!.oneDecimalPlace)")
        
        
        //MARK: ATIVAN
        //Calculates the dose and ML's to be given.
        let ativan = calculateDoseTwo(DoseMin: 0.05, _DoseMax: 0.1)
        let ativanML = calculateDoseTwoML(DoseMin: 0.05, finalConcentrationPer_ML: 2, _DoseMax: 0.1)
        
        //setting the text labels
        ativan_DetailDoseLabel.text = "0.05 - 0.1 mg/kg | 2mg/mL"
        ativan_Dose.text =  ativan
        ativan_ML.text = ativanML
        
        print("Ativan dose is " + ativan + "and ML is " + ativanML)
        
        
        
        
        
        //MARK: - BICARBONATE
        //Guard function from the closure.
        let bicarb: Double? =  calculateDoseOne(Dose: 1)
        
        guard let _ = bicarb else { return}
        // What happens when etomidate is not nil.
        // Sets the detail label with the dose and mL amount
        
        switch weightEntered! {
            
        case 0...9.9: // We are going to calculate the 4.2% which is 2 mL/kg
            bicarbonate_DetailDoseLabel.text = "4.2%: 1 mEq/kg | 0.5 mEq/mL- Dilute 8.4% 1:1"
            // Change the title label
            bicarbTitleLabel.text = "NaHC03 (4.2%)"
            // Calculates the mL's to be given from the calculated dose. weight * mL's
            let bicarb42MLs = calculateOneDose_Bicarb_DecimalMls(Dosage: 1, mL:2 ) // Enter the mg/ mL here.
            
            // 50 mEq in 50 mL = 1 mEq/mL
            
            // Sets both the dose and ML amount
            bicarbonate_Dose.text = String.localizedStringWithFormat("%.1f", bicarb!)
            bicarb_ML.text = bicarb42MLs
            print("Bicarb 4.2% calculated Dose is \(bicarb!.oneDecimalPlace)")
            
            
        // If the weight is greated than 10, then use the 8.4%
        case 10.0...100.0:
            let bicarbMLs84 = convertMLfromCalculatedDose(patientDosePerKG: 1, doseIn_Mg_G: 1, mL: 1) // Enter the mg/ mL here.
            // Change the title label
            bicarbTitleLabel.text = "NaHC03 (8.4%)"
            bicarbonate_DetailDoseLabel.text = "8.4%: 1 mEq/kg |1 mEq/mL"
            
            bicarbonate_Dose.text = String.localizedStringWithFormat("%.1f", bicarb!)
            bicarb_ML.text = "\(bicarbMLs84.oneDecimalPlace)"
            
            print("Bicarb 8.4% calculated Dose is \(bicarb!.oneDecimalPlace)")
            
        default:
            break
        }
        
        
        
        
        //MARK: CALCIUM CHLORIDE 100/ mL
        //Guard function from the closure Atropine.
        let caChlorideDose =  calculateDoseTwo(DoseMin: 10, _DoseMax: 20)
        
        // Sets the detail label with the dose and mL amount
        calcium_DetailDoseLabel.text = "10-20 mg/kg  | 100 mg/mL"
        
        // Calculates the mL's to be given from the calculated dose
        let caChloride = calculateDoseTwoML(DoseMin: 10, finalConcentrationPer_ML: 100, _DoseMax: 20) // Enter the mg/ mL here.
        
        // Sets both the dose and ML amount
        calcium_Dose.text = caChlorideDose
        calcium_ML.text = caChloride
        
        print("Calcium Chloride Dose is \(caChlorideDose) and mL -> \(caChloride)")
        
        
        
        //MARK: CALCIUM GLUCONATE
        let caGluconateDose = calculateDoseOne(Dose: 60)
        let caGluconatemL = convertMLfromCalculatedDose(patientDosePerKG: 60, doseIn_Mg_G: 100, mL: 1)
        
        // Set the detail text label
        caGluconate_DetailDoseLabel.text = "60 mg/kg | 100 mg/mL"
        // Set Dose and Ml's labels
        caGluconate_ML.text = "\(caGluconatemL.oneDecimalPlace)"
        caGluconate_Dose.text = String.localizedStringWithFormat("%.1f", caGluconateDose)
        
        //Print
        print("Calcium Gliconate Dose is \(caGluconateDose) and mL -> \(caGluconatemL)")
        
        
        
        //MARK: - DEXTROSE
        /*
         Adult: D50 at 1 ml/kg
         Child: D25 at 2 ml/kg
         Infant: D10 at 5 ml/kg
         */
        
        // Glucose closure using the Rule of 50
        
        func ruleOf50Glucose(DetrosePercentage: Double, weightInKg: Double) -> Double {
            /*
             
             D10 x 5 cc/kg = 10 x 5 = 50.   For a 10kg child, bolus 5cc/kg or 50cc of D10  --- answer to question
             D5 x 10 cc/kg = 5 x 10 = 50.   For a 10 kg child, bolus 10cc/kg or 100cc of D5
             D25 x 2 cc/kg = 25 x 2 = 50.  For a 10 kg child, bolus 2cc/kg  or 20cc of D25
             D50 x 1 cc/kg = 50 x 1 = 50.  For a 10 kg child, bolus 1cc/kg or 10cc of D50
             
             */
            
            // calculates the dose per kilogram
            let perKilogramDose = 50  / DetrosePercentage
            // Takes the dose per kilogram and multiplies it ot the weight to get the ML/KG
            let finalGlucoseCalculation = perKilogramDose * weightInKg
            print("\(perKilogramDose)" + "perKilogram Dose")
            //Returns the final dosage.
            return finalGlucoseCalculation
            
        }
        
        //Guard function from the closure.
        let D12_5 =  50/12.5 // Since the mL is 0.5 g/kg convert into miligrams
        let D25 =    50/25// Since the mL is 0.5 g/kg convert into miligrams
        let D10 = 50 / 10 // Since the mL is 0.5 g/kg convert into miligrams
        let D5 = 50 / 5
        
        let D_25MLs = ruleOf50Glucose(DetrosePercentage: 25, weightInKg: weightEntered!) //Child (D25): 50/25 = 2 ml/kg
        let D_12_5MLs = ruleOf50Glucose(DetrosePercentage: 12.5, weightInKg: weightEntered!) // Child (D12.5): 50/12.5 = 4 ml/kg
        let D_10MLs = ruleOf50Glucose(DetrosePercentage: 10, weightInKg: weightEntered!) // Infant (D10): 50/10 = 5 ml/kg
        let D_5MLs = ruleOf50Glucose(DetrosePercentage: 5, weightInKg: weightEntered!)
        
        print(D_25MLs)
        
        // Sets the detail label with the dose and mL amount
        dextrose12_5_DetailDoseLabel.text = "0.5 g/kg - \(weightEntered! * 0.5)g | Dosing at \(String(describing: D12_5)) mL/kg"
        dextrose25_DetailDoseLabel.text = "0.5 g/kg - \(weightEntered! * 0.5)g | Dosing at \(String(describing: D25)) mL/kg"
        dextrose10_DetailDoseLabel.text = "0.5 g/kg - \(weightEntered! * 0.5)g | Dosing at \(String(describing: D10)) mL/kg"
        dextrose5_DetailDoseLabel.text = "0.5 g/kg - \(weightEntered! * 0.5)g | Dosing at  \(String(describing: D5)) mL/kg"
        // Sets both the dose and ML amount
        
        dextrose25_ML.text = "\(D_25MLs)"
        dextrose12_5_ML.text =  "\(D_12_5MLs)"
        dextrose10_ML.text =  "\(D_10MLs)"
        dextrose5_ML.text = "\(D_5MLs)"
        
        print("Dextrose 50, 25, and 10 mL's dose are \(D_25MLs)mL's , \(D_12_5MLs) mL's, \(D_10MLs) mL's")
        
        
        
        
        
        //MARK: - ETOMIDATE
        //Guard function from the closure.
        let etomidate: Double? =  calculateDoseOne(Dose: 0.3)
        
        guard let _ = etomidate else { return}
        // What happens when etomidate is not nil.
        
        // Sets the detail label with the dose and mL amount
        etomidate_DetailDoseLabel.text = "0.3 mg/kg  | 2 mg/mL"
        
        // Calculates the mL's to be given from the calculated dose
        let etomidateMLs = convertMLfromCalculatedDose(patientDosePerKG: 0.3, doseIn_Mg_G: 2, mL: 1)
        //calculateOneDoseMls(Dosage: 0.3, mL: 2) // Enter the mg/ mL here.
        
        // Sets both the dose and ML amount
        etomidate_Dose.text = String.localizedStringWithFormat("%.1f", etomidate!)
        etomidate_ML.text =  "\(etomidateMLs.oneDecimalPlace)"
        
        print("Etomidate Dose is \(etomidate!.oneDecimalPlace)")
        
        
        
        //MARK: - EPINEPHRINE
        //Guard function from the closure.
        let epi: Double? = calculateDoseOne(Dose: 0.01)
        guard let _ = epi else { return}
        // What happens when epi is not nil.
        
        // Sets the detail label with the dose and mL amount
        epinephrine_DetailDoseLabel.text = "0.01 mg/kg  | 0.1 mg/mL"
        
        // Calculates the mL's to be given from the calculated dose
        let epiMLs = convertMLfromCalculatedDose(patientDosePerKG: 0.01, doseIn_Mg_G: 0.1, mL: 1)
        // Enter the mg/ mL here. Epi is 0.1 mg/mL and 1mg/10 mL
        //let epiMLs = calculateDoseOne(Dose: 0.1) // Epi can also be dosed 1:10,000 0.1 mL/kg
        
        // Sets both the dose and ML amount
        epinephrine_Dose.text = "\(String(describing: epi!.twoDecimalPlace))"
        epinephrine_ML.text = "\(epiMLs.oneDecimalPlace)"
        print("Epi dose is \(epi!.twoDecimalPlace), \(String(describing: epiMLs)) mL's")
        
        
        
        //MARK: FENTANYL
        // 100/ 2Ml = 50 mcg/mL
        let fentanyl: Double? = calculateDoseOne(Dose: 1)
        let fentanylML = convertMLfromCalculatedDose(patientDosePerKG: 1, doseIn_Mg_G: 50, mL: 1)
        
        guard let _ = fentanyl else { return}
        // Here we set the textLabels
        fentanyl_DetailDoseLabel.text = "1 mcg/kg | 50 mcg/mL"
        fentanyl_Dose.text = "\(fentanyl!)"
        fentanyl_ML.text = "\(fentanylML.oneDecimalPlace)"
        
        
        
        
        //MARK: - KETAMINE
        //Guard function from the closure.
        let ketamine =  calculateDoseTwo(DoseMin: 1, _DoseMax: 2)
        
        // Sets the detail label with the dose and mL amount
        ketamine_DetailDoseLabel.text = "1-2 mg/kg | 10 mg/mL"
        
        // Calculates the mL's to be given from the calculated dose
        let ketamineML =  calculateDoseTwoML(DoseMin: 1, finalConcentrationPer_ML: 10, _DoseMax: 2)
        print("Ketamine mL dose is \(ketamineML) mL's")
        
        // Sets both the dose and ML amount
        ketamine_Dose.text = ketamine
        ketamine_ML.text = ketamineML //String.localizedStringWithFormat("%.1f", succsMLs2)
        
        print("Ketamine Dose is \(ketamine)")
        
        
        
        
        
        
        //MARK: - LIDOCAINE
        //Guard function from the closure.
        let lidocaine: Double? = calculateDoseOne(Dose: 1)
        
        guard let _ = lidocaine else { return}
        // What happens when epi is not nil.
        
        // Sets the detail label with the dose and mL amount
        lidocaine_DetailDoseLabel.text = "1 mg/kg | 20 mg/mL"
        
        // Calculates the mL's to be given from the calculated dose
        let lidocaineMLs = convertMLfromCalculatedDose(patientDosePerKG: 1, doseIn_Mg_G: 20, mL: 1)
        //calculateOneDoseMls(Dosage: 1, mL: 20) // Enter the mg/ mL here.
        
        // Sets both the dose and ML amount
        lidocaine_Dose.text = String.localizedStringWithFormat("%.1f", lidocaine!)
        lidocaine_ML.text =  "\(lidocaineMLs)"
        
        print("Lidocaine dose is \(lidocaine!.oneDecimalPlace), \(String(describing: lidocaineMLs)) mL's")
        
        
        //MARK: PROPOFOL
        //Calculates the dose and ML's to be given.
        let propofol = calculateDoseTwo(DoseMin: 25, _DoseMax: 100)
        let propofolML = calculateDoseTwoML(DoseMin: 25, finalConcentrationPer_ML: 10, _DoseMax: 100)
        
        //setting the text labels
        propofol_DetailDoseLabel.text = "25-100 mcg/kg/min | 10 mg/mL"
        propofol_Dose.text =  propofol
        propofol_ML.text = propofolML
        
        print("Propfol dose is " + propofol + "and ML is "  + propofolML)
        
        
        
        
        //MARK: - SUCCINYLCHOLINE
        //Guard function from the closure.
        let succinycholine =  calculateDoseTwo(DoseMin: 1, _DoseMax: 2)
        
        // Sets the detail label with the dose and mL amount
        succinylcholine_DetailDoseLabel.text = "1-2 mg/kg | 20 mg/mL"
        
        // Calculates the mL's to be given from the calculated dose
        let succsMLs2 =  calculateDoseTwoML(DoseMin: 1, finalConcentrationPer_ML: 20, _DoseMax: 2)
        
        print("Succs mL dose is \(succsMLs2) mL's")
        
        // Sets both the dose and ML amount
        succinylcholine_Dose.text = succinycholine
        succinylcholine_ML.text = succsMLs2 //String.localizedStringWithFormat("%.1f", succsMLs2)
        
        print("Succinylcholine Dose is \(succinycholine)")
        
        
        
        
        
        
        
        //MARK: - VECURONIUM
        //Guard function from the closure.
        let vecuronium: Double? =  calculateDoseOne(Dose: 0.1)
        guard let _ = vecuronium
            else { return}
        // What happens when etomidate is not nil.
        // Sets the detail label with the dose and mL amount
        vecuronium_DetailDoseLabel.text = "0.1 mg/kg  | 1 mg/mL"
        
        // Calculates the mL's to be given from the calculated dose
        let vecMLs = convertMLfromCalculatedDose(patientDosePerKG: 0.1, doseIn_Mg_G: 1, mL: 1)
        //calculateOneDoseMls(Dosage: 0.1, mL: 1)
        
        // Sets both the dose and ML amount
        vecuronium_DOse.text = String.localizedStringWithFormat("%.1f", vecuronium!)
        vecuronium_ML.text = "\(vecMLs.oneDecimalPlace)"
        
        print("Vecuronium Dose is \(String(describing: vecuronium!.oneDecimalPlace))")
        
        
        
        //MARK: - MG SULFATE
        //Guard function from the closure.
        let mgSulfateInitial =  calculateDoseOne(Dose: 25)
        let mgSulfateFinal = calculateDoseOne(Dose: 50)
        
        // Sets the detail label with the dose and mL amount
        magSulfate_DetailDoseLabel.text = "25-50 mg/kg | 500 mg/mL"
        
        // Condition to solve if the mg amount is over 1000, then convert to grams.
        if (mgSulfateInitial >= 1000.0) || (mgSulfateFinal >= 1000.0) {
            
            /*
             What happens when mag is calculated over 1k mg. We convert to grams. Takes the 2 string does and combines in the output Text. We are converting the output to grams by dividing by 1000 on each dose.
             */
            mgSulfate_Dose.text = String.localizedStringWithFormat("%.2f", mgSulfateInitial / 1000) + " - " + String.localizedStringWithFormat("%.2f", mgSulfateFinal / 1000)
            // Changing the units label
            mgDoseWeightLabel.text = "g"
        } else {
            //Takes the 2 string does and combines in the output Text.
            mgSulfate_Dose.text = String.localizedStringWithFormat("%.1f", mgSulfateInitial) + " - " + String.localizedStringWithFormat("%.1f", mgSulfateFinal)
            // Changing the units label
            mgDoseWeightLabel.text = "mg's"
            
        }
        
        // Calculates the mL's to be given from the calculated dose
        let mgSulfateML = convertMLfromCalculatedDose(patientDosePerKG: 25, doseIn_Mg_G: 500, mL: 1)
        //calculateOneDoseMls(Dosage: 25, mL: 500) // Enter the mg/ mL here.
        //let mgSulfateSecondML = calculateOneDoseMls(Dosage: 50, mL: 500) // Enter the mg/ mL here.
        let mgSulfateSecondML = convertMLfromCalculatedDose(patientDosePerKG: 50, doseIn_Mg_G: 500, mL: 1)
        // Sets both the dose and ML amount
        magSulfate_ML.text = "\(mgSulfateML.oneDecimalPlace)" + " - " + "\(mgSulfateSecondML.oneDecimalPlace)"
        
        print("Mag Sulfate dose is \(mgSulfateInitial.oneDecimalPlace) and mL amount is \(mgSulfateML.oneDecimalPlace)  -  \(mgSulfateSecondML.oneDecimalPlace)" )
        
        
        
        //        //MARK: - MORPHINE 10mg/ 2mL .. 0.1mg/kg
        
        // Calculate the dose from weight.
        let morphineDosage = calculateDoseOne(Dose: 0.1)
        
        // Calculate how many mL's
        let morphineML = convertMLfromCalculatedDose(patientDosePerKG: 0.1, doseIn_Mg_G: 10, mL: 2)
        
        // Set both the dose and ML text fields
        morphine_Dose.text = String.localizedStringWithFormat("%.1f", morphineDosage)
        morphine_mL.text = "\(morphineML.oneDecimalPlace)"
        morphine_Detail.text = "0.1 mg/kg  | 5 mg/mL"
        print("Morphine dose is \(String(describing: morphineDosage)) and mL amount is \(morphineML)" )
        
        
        //MARK: - MANNITOL 12.5G in 50mL .. 0.5g/kg
        let mannitol = calculateDoseOne(Dose: 500) // because 500 mg is 0.5 grams. Will convert later to grams
        let mannitolML = convertMLfromCalculatedDose(patientDosePerKG: 500, doseIn_Mg_G: 250, mL: 1) // 12.5g / 50 mL is 250 mg/mL
        
        mannitol_Dose.text = String.localizedStringWithFormat("%.1f", mannitol / 1000)
        mannitol_Ml.text = "\(mannitolML.oneDecimalPlace)"
        mannitol_Detail.text = "0.5g/kg | 250mg / mL"
        
        
        //MARK: - ROCURONIUM
        //Guard function from the closure.
        let rocuronium =  calculateDoseTwo(DoseMin: 0.6, _DoseMax: 1.2)
        let rocuroniumMls = calculateDoseTwoML(DoseMin: 0.6, finalConcentrationPer_ML: 10, _DoseMax: 1.2)
        
        // Sets the detail label with the dose and mL amount
        rocuronium_DetailDoseLabel.text = "0.6 - 1.2 mg/kg  | 10 mg/mL"
        
        // Sets both the dose and ML amount
        rocuronium_Dose.text = rocuronium
        rocuronium_ML.text = rocuroniumMls
        
        print("Roc Dose is \(rocuronium) and mL's are \(rocuroniumMls)")
        
        
        
        
        
        
        print("") // space on the log
    }
    
    
    
    
    

    

}
