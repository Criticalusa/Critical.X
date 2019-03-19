//
//  _12Lead_Attributes.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 3/9/19.
//  Copyright © 2019 Jadie Barringer III. All rights reserved.
//

import Foundation
import UIKit

// Because we will be referencing this in the segue.

extension _12Lead_Collection_VC {

    //MARK: - OVerview

    
    // We change the colors of the ekg description
func overViewAttribute(text: String) -> NSAttributedString
{
    
    // Where do we want to get the text info from ( source )
    let changedText = EKGDescription.Overview
    
    let attributedText = NSMutableAttributedString.getAttributedString(fromString: changedText.rawValue)
    
    // Change the colors of the individual words within the text
    // Global string variable
    var changedString = String()
    
    let augmented = "Augmented Limb Leads (Unipolar):"
    let limb = "Limb Leads (Bipolar):"
    let precordial = "Precordial Leads (V1-V6):"
    let morphology = "Morphology assessment"
    let qrs = "QRS complex:"
    let pwave = "P-wave:"
    
    
    // Change the text here
    if text.contains(augmented) {
        changedString = augmented
        // Set the string to the changed String so its set at the end
        
        // This is the color of the singled out text.
        attributedText.apply(color: #colorLiteral(red: 0.1686089337, green: 0.1686392725, blue: 0.1686022878, alpha: 1), subString: changedString)
        //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
        let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
        
        // Change the font of the string
        attributedText.apply(font: customFont!, subString: changedString)
        
    }
    
    // Change the text here
    if text.contains(pwave) {
        changedString = pwave
        // Set the string to the changed String so its set at the end
        
        // This is the color of the singled out text.
        attributedText.apply(color: #colorLiteral(red: 0.9925034642, green: 0.8121734858, blue: 0, alpha: 1), subString: changedString)
        //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
        let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
        
        // Change the font of the string
        attributedText.apply(font: customFont!, subString: changedString)
        
    }
    
    
    if text.contains(precordial) {
        changedString = precordial
        // Set the string to the changed String so its set at the end
        
        // This is the color of the singled out text.
        attributedText.apply(color: #colorLiteral(red: 0.150000006, green: 0.1899999976, blue: 0.2399999946, alpha: 1), subString: changedString)
        //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
        let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
        
        // Change the font of the string
        attributedText.apply(font: customFont!, subString: changedString)
        
    }
    
    if text.contains(limb) {
        changedString = limb
        // Set the string to the changed String so its set at the end
        
        // This is the color of the singled out text.
        attributedText.apply(color: #colorLiteral(red: 0.150000006, green: 0.1899999976, blue: 0.2399999946, alpha: 1), subString: changedString)
        //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
        let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
        
        // Change the font of the string
        attributedText.apply(font: customFont!, subString: changedString)
        
        
    }
    
    if text.contains(morphology) {
        changedString = morphology
        // Set the string to the changed String so its set at the end
        
        // This is the color of the singled out text.
        attributedText.apply(color: #colorLiteral(red: 0.9925034642, green: 0.8121734858, blue: 0, alpha: 1), subString: changedString)
        //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
        let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
        
        // Change the font of the string
        attributedText.apply(font: customFont!, subString: changedString)
        
        
    }
    
    
    if text.contains(qrs) {
        changedString = qrs
        // Set the string to the changed String so its set at the end
        
        // This is the color of the singled out text.
        attributedText.apply(color: #colorLiteral(red: 0.9925034642, green: 0.8121734858, blue: 0, alpha: 1), subString: changedString)
        //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
        let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
        
        // Change the font of the string
        attributedText.apply(font: customFont!, subString: changedString)
        
    }
    
    
    
    return attributedText
}


}
