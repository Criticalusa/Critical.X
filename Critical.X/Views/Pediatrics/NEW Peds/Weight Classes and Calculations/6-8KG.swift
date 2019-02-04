//
//  6-8KG.swift
//  CriticalPediatrics
//
//  Created by Jadie Barringer III on 9/14/18.
//  Copyright © 2018 Jadie Barringer III. All rights reserved.
//

import Foundation
import UIKit


extension Pediatric_DetailVC {
// MARK: - 6-8 kgs
func case_SixToEight() -> Void {
    print("Weight is \(String(describing: weightEntered)), between 6-8 kg: Yellow")
    
    // Calculates the conversion from Kg's to Lbs
    let pounds: Double? = (weightEntered)! * 2.2
    
    // Guard function to calculate the weight from the optional value.
    guard let w = weightEntered,
        let lbs = pounds,
        let age = weightEntered
        else {return}
    
    weightCalcLabel.text = "\(w) kg " + " " + "| " + String.localizedStringWithFormat("%.1f", lbs) + " lbs"
    age_Label.text = approximateAgeFromWeight(weight: age)
    
    
   
    
    // MARK: Adds a border line color.
    vitalsView.addBorder(side: .left, thickness: 5.0, color:FlatColor.BackgroundColor.Pink.toUIColor(), leftOffset: 0.1)
    ventImageView.addBorder(side:.left,thickness: 5.0, color:FlatColor.BackgroundColor.Pink.toUIColor(), leftOffset: 0.1)
    equipmentUIView.addBorder(side:.left,thickness: 5.0, color:FlatColor.BackgroundColor.Pink.toUIColor(), leftOffset: 0.1)
    sedationParalytics.addBorder(side:.left,thickness: 5.0, color:FlatColor.BackgroundColor.Pink.toUIColor(), leftOffset: 0.1)
    cardiacResuscitation.addBorder(side:.left,thickness: 5.0, color:FlatColor.BackgroundColor.Pink.toUIColor(), leftOffset: 0.1)
    medicationsOther.addBorder(side:.left,thickness: 5.0, color:FlatColor.BackgroundColor.Pink.toUIColor(), leftOffset: 0.1)

    // DOSAGES
}

}
