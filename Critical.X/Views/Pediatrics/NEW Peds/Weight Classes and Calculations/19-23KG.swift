//
//  19-23KG.swift
//  CriticalPediatrics
//
//  Created by Jadie Barringer III on 9/14/18.
//  Copyright © 2018 Jadie Barringer III. All rights reserved.
//

import Foundation
import UIKit

extension Pediatric_DetailVC {
    
    //MARK: 19-23 kg's
    func case_NinteenToTwentyThree() {
        
        print("Child, Blue Color, 19-23 kg")
        
        // Calculates the conversion from Kg's to Lbs
        let pounds: Double? = (weightEntered)! * 2.2
        
        // Guard function to calculate the weight from the optional value.
        guard let w = weightEntered,
            let lbs = pounds,
            let age = weightEntered
            else {return}
        weightCalcLabel.text = "\(w) kg " + " " + "| " + String.localizedStringWithFormat("%.1f", lbs) + " lbs"
        
        //Calculates the approx. age from weight
        /// If the weight is between 19 - 20 kg's we'll use the other formula for the case.
        if  (weightEntered! >= 19.0) && (weightEntered! <= 20.0) {
            print (approximateAgeFromWeight_1_5(weight: age))
            age_Label.text = approximateAgeFromWeight_1_5(weight: age)
        } else {
            age_Label.text = approximateAgeFromWeight_5_14(weight: age)
            print (approximateAgeFromWeight_5_14(weight: age))
        }
        
        
        // MARK: Adds a border line color.
        vitalsView.addBorder(side: .left, thickness: 5.0, color:FlatColor.BackgroundColor.Blue.toUIColor(), leftOffset: 0.1)
        ventImageView.addBorder(side:.left,thickness: 5.0, color:FlatColor.BackgroundColor.Blue.toUIColor(), leftOffset: 0.1)
        equipmentUIView.addBorder(side:.left,thickness: 5.0, color:FlatColor.BackgroundColor.Blue.toUIColor(), leftOffset: 0.1)
        sedationParalytics.addBorder(side:.left,thickness: 5.0, color:FlatColor.BackgroundColor.Blue.toUIColor(), leftOffset: 0.1)
        cardiacResuscitation.addBorder(side:.left,thickness: 5.0, color:FlatColor.BackgroundColor.Blue.toUIColor(), leftOffset: 0.1)
        medicationsOther.addBorder(side:.left,thickness: 5.0, color:FlatColor.BackgroundColor.Blue.toUIColor(), leftOffset: 0.1)

        
        //DOSAGE
        
    }
}
