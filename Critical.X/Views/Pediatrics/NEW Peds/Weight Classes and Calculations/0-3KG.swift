//
//  0-3KG.swift
//  CriticalPediatrics
//
//  Created by Jadie Barringer III on 9/12/18.
//  Copyright © 2018 Jadie Barringer III. All rights reserved.
//

import Foundation
import UIKit

extension Pediatric_DetailVC {
    
    // MARK: - WEIGHT CLASS HELPER FUNCTIONS
    
    // What happens when certain weight classes are selected.
    // MARK: - 0-3 kgs
    func case_03 () -> Void {
        
        
       
        
        let pounds: Double? = (weightEntered)! * 2.2
        // We arent doing any border colors for premature ones.
        
        //MARK: - Vital Signs
        systolic.text = CriticalPediatrics.PediatricData.Premature.SystolicBP.execute()
        diastolic.text = CriticalPediatrics.PediatricData.Premature.DiastolicBP.execute()
        respRate_lbl.text = CriticalPediatrics.PediatricData.Premature.RespRate.execute()
        heartRate.text = CriticalPediatrics.PediatricData.Premature.Pulse.execute()
        hypotensiveLabel.text = CriticalPediatrics.PediatricData.Premature.Hypotensive.execute()
        
        // MARK: Guard function to calculate the weight/ age from the entered weight value.
        guard let w = weightEntered,
            let lbs = pounds,
            let age = weightEntered
            else {return}
        
        // MARK: Congerts Kg's to grams
        weightCalcLabel.text = " \(Int (w * 1000)) grams | \(lbs.rounded()) lbs"
        
        // Shows approx age from weight calculated
        age_Label.text = approximateAgeFromWeight(weight: age)
        
        // MARK: Defib calculation and dosages. Stay the same.
        defibrillation_Lbl.text =  defib(Weight: weightEntered!, EnergyOne: 2, EnergyTwo: 4)
        cardioversion_lbl.text =  defib(Weight: weightEntered!, EnergyOne: 0.5, EnergyTwo: 1)
        
        
        // MARK: EQUIPMENT
        ngTube_lbl.text = CriticalPediatrics.PediatricData.Premature.NGTubeSize.execute()
        chestTube_lbl.text = CriticalPediatrics.PediatricData.Premature.ChestTubeSize.execute()
        opa_lbl.text = CriticalPediatrics.PediatricData.Premature.OralAirway.execute()
        foleyCath_lbl.text = CriticalPediatrics.PediatricData.Premature.FoleyCathSize.execute()
        laryngescope_lbl.text = CriticalPediatrics.PediatricData.Premature.Laryngescope.execute()
        ett_cuffed_lbl.text = CriticalPediatrics.PediatricData.Premature.ETTSizeCuffed.execute()
        ett_Uncuffed_lbl.text = CriticalPediatrics.PediatricData.Premature.ETTSizeUnCuffed.execute()
        centralLine_lbl.text = CriticalPediatrics.PediatricData.Premature.CentralLine.execute()
        
        
        //MARK: Vent
        peep_lbl.text = CriticalPediatrics.PediatricData.Premature.PEEP.execute()
        ventMode_lbl.text = CriticalPediatrics.PediatricData.Premature.Mode.execute()
        ventRate_lbl.text = CriticalPediatrics.PediatricData.Premature.RespiratoryVentRate.execute()
        ventTV_lbl.text = CriticalPediatrics.PediatricData.Premature.TidalVolume.execute()
        iTime_lbl.text = CriticalPediatrics.PediatricData.Premature.Itime.execute()
        pip_lbl.text = CriticalPediatrics.PediatricData.Premature.PIP.execute()
        
        
        //MARK: MEDICATIONS
        
        print("Weight is \(String(describing: weightEntered)), between 0-5 kg: Blue")
        
    }
    
}
