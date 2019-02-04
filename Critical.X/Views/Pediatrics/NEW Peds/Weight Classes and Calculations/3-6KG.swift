//
//  3-6KG.swift
//  CriticalPediatrics
//
//  Created by Jadie Barringer III on 9/12/18.
//  Copyright © 2018 Jadie Barringer III. All rights reserved.
//

import Foundation
import UIKit



extension Pediatric_DetailVC {
    
    
    // MARK: - 3-6 kgs
    func case_ThreeToSix() -> Void {
        
        // MARK: Adds a border line color.
        vitalsView.addBorder(side: .left, thickness: 5.0, color:FlatColor.BackgroundColor.Gray.toUIColor(), leftOffset: 0.1)
        ventImageView.addBorder(side:.left,thickness: 5.0, color:FlatColor.BackgroundColor.Gray.toUIColor(), leftOffset: 0.1)
        equipmentUIView.addBorder(side:.left,thickness: 5.0, color:FlatColor.BackgroundColor.Gray.toUIColor(), leftOffset: 0.1)
        sedationParalytics.addBorder(side:.left,thickness: 5.0, color:FlatColor.BackgroundColor.Gray.toUIColor(), leftOffset: 0.1)
        cardiacResuscitation.addBorder(side:.left,thickness: 5.0, color:FlatColor.BackgroundColor.Gray.toUIColor(), leftOffset: 0.1)
        medicationsOther.addBorder(side:.left,thickness: 5.0, color:FlatColor.BackgroundColor.Gray.toUIColor(), leftOffset: 0.1)

        
        //MARK: - Vital Signs
        systolic.text = CriticalPediatrics.PediatricData.Term.SystolicBP.execute()
        diastolic.text = CriticalPediatrics.PediatricData.Term.DiastolicBP.execute()
        respRate_lbl.text = CriticalPediatrics.PediatricData.Term.RespRate.execute()
        heartRate.text = CriticalPediatrics.PediatricData.Term.Pulse.execute()
        hypotensiveLabel.text = CriticalPediatrics.PediatricData.Term.Hypotensive.execute()

        
        let pounds: Double? = (weightEntered)! * 2.2
        
        // MARK: Guard function to calculate the weight/ age from the entered weight value.
        guard let w = weightEntered,
            let lbs = pounds,
            let age = weightEntered
            else {return}
        
        // MARK: Congerts Kg's to grams
        weightCalcLabel.text = " \(Int (w * 1000)) grams |  " + String.localizedStringWithFormat("%.1f", lbs) + " lbs"
        
        // MARK: Shows approx age from weight calculated
        age_Label.text = approximateAgeFromWeight(weight: age)
        
        // MARK: Defib calculation and dosages. Stay the same.
        defibrillation_Lbl.text =  defib(Weight: weightEntered!, EnergyOne: 2, EnergyTwo: 4)
        cardioversion_lbl.text =  defib(Weight: weightEntered!, EnergyOne: 0.5, EnergyTwo: 1)
        
        
        // DOSAGES and Set labels
        print("Weight is \(String(describing: weightEntered)), between 5-10 kg: Green")
        
    }
    
    
    
}
