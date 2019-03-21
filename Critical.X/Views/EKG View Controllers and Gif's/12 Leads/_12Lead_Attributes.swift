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
//MARK: - Overview
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
    let Twave = "T Wave:"
    let stSegment = "ST Segment:"
    
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
    if text.contains(Twave) {
        changedString = Twave
        // Set the string to the changed String so its set at the end
        
        // This is the color of the singled out text.
        attributedText.apply(color: #colorLiteral(red: 0.9925034642, green: 0.8121734858, blue: 0, alpha: 1), subString: changedString)
        //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
        let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
        
        // Change the font of the string
        attributedText.apply(font: customFont!, subString: changedString)
        
    }
    
    // Change the text here
    if text.contains(stSegment) {
        changedString = stSegment
        // Set the string to the changed String so its set at the end
        
        // This is the color of the singled out text.
        attributedText.apply(color: #colorLiteral(red: 0.9925034642, green: 0.8121734858, blue: 0, alpha: 1), subString: changedString)
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

//MARK: - MI Regions
extension _12Lead_Collection_VC {
    
    func miRegions_Attribute(text: String) -> NSAttributedString
    {
        
        // Where do we want to get the text info from ( source )
        let changedText = EKGDescription.MIRegions
        
        let attributedText = NSMutableAttributedString.getAttributedString(fromString: changedText.rawValue)
        
        // Change the colors of the individual words within the text
        // Global string variable
        var changedString = String()
        
        let A = ""
        let B = ""
        let C = ""
        let D = ""
        let E = ""
        let F = ""
        let G = ""
        let H = ""
        
        // Change the text here
        if text.contains(A) {
            changedString = A
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.1686089337, green: 0.1686392725, blue: 0.1686022878, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        // Change the text here
        if text.contains(G) {
            changedString = G
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.9925034642, green: 0.8121734858, blue: 0, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        // Change the text here
        if text.contains(H) {
            changedString = H
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.9925034642, green: 0.8121734858, blue: 0, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        
        // Change the text here
        if text.contains(F) {
            changedString = F
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.9925034642, green: 0.8121734858, blue: 0, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        
        if text.contains(C) {
            changedString = C
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.150000006, green: 0.1899999976, blue: 0.2399999946, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        if text.contains(B) {
            changedString = B
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.150000006, green: 0.1899999976, blue: 0.2399999946, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
            
        }
        
        if text.contains(D) {
            changedString = D
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.9925034642, green: 0.8121734858, blue: 0, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
            
        }
        
        
        if text.contains(E) {
            changedString = E
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

//MARK: - Lead Axis
extension _12Lead_Collection_VC {
    
    func leadAxis_Attribute(text: String) -> NSAttributedString
    {
        
        // Where do we want to get the text info from ( source )
        let changedText = EKGDescription.LeadAxis
        
        let attributedText = NSMutableAttributedString.getAttributedString(fromString: changedText.rawValue)
        
        // Change the colors of the individual words within the text
        // Global string variable
        var changedString = String()
        
        let A = "Overview"
        let B = "The Breakdown"
        let C = "The Main Point"
        let D = "Normal Axis-"
        let E = "Physiological Left Axis Deviation (LAD)"
        let F = "Pathological Left Axis Deviation"
        let G = "Right Axis Deviation (RAD)"
        let H = "Extreme Right Axis Deviation (ERAD)"
        let I = "Normal Axis"
        let J = "Right Axis Deviation"
        let K = "Extreme Right Axis Deviation"
        let L = "Left Axis Deviation"
        let M = "ERAD causes:"
        let N = "LAD causes include:"
        
        // Change the text here
        if text.contains(N) {
            changedString = N
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        
        // Change the text here
        if text.contains(M) {
            changedString = M
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        // Change the text here
        if text.contains(A) {
            changedString = A
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        // Change the text here
        if text.contains(I) {
            changedString = I
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        // Change the text here
        if text.contains(J) {
            changedString = J
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
       
        
        // Change the text here
        if text.contains(K) {
            changedString = K
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        
        // Change the text here
        if text.contains (L) {
            changedString = L
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        // Change the text here
        if text.contains(G) {
            changedString = G
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        // Change the text here
        if text.contains(H) {
            changedString = H
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        
        // Change the text here
        if text.contains(F) {
            changedString = F
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        
        if text.contains(C) {
            changedString = C
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.1215686277, green: 0.1294117719, blue: 0.1411764771, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        if text.contains(B) {
            changedString = B
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
            
        }
        
        if text.contains(D) {
            changedString = D
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
            
        }
        
        
        if text.contains(E) {
            changedString = E
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        
        
        return attributedText
    }
    
}

//MARK: - Anterior Wall
extension _12Lead_Collection_VC {
    
    func anteriorWall_Attribute(text: String) -> NSAttributedString
    {
        
        // Where do we want to get the text info from ( source )
        let changedText = EKGDescription.AnteriorWall
        
        let attributedText = NSMutableAttributedString.getAttributedString(fromString: changedText.rawValue)
        
        // Change the colors of the individual words within the text
        // Global string variable
        var changedString = String()
        
        let A = ""
        let B = ""
        let C = ""
        let D = ""
        let E = ""
        let F = ""
        let G = ""
        let H = ""
        
        // Change the text here
        if text.contains(A) {
            changedString = A
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.1686089337, green: 0.1686392725, blue: 0.1686022878, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        // Change the text here
        if text.contains(G) {
            changedString = G
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.9925034642, green: 0.8121734858, blue: 0, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        // Change the text here
        if text.contains(H) {
            changedString = H
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.9925034642, green: 0.8121734858, blue: 0, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        
        // Change the text here
        if text.contains(F) {
            changedString = F
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.9925034642, green: 0.8121734858, blue: 0, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        
        if text.contains(C) {
            changedString = C
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.150000006, green: 0.1899999976, blue: 0.2399999946, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        if text.contains(B) {
            changedString = B
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.150000006, green: 0.1899999976, blue: 0.2399999946, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
            
        }
        
        if text.contains(D) {
            changedString = D
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.9925034642, green: 0.8121734858, blue: 0, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
            
        }
        
        
        if text.contains(E) {
            changedString = E
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

//MARK: - Inferior Wall
extension _12Lead_Collection_VC {
    
    func inferiorWall_Attribute(text: String) -> NSAttributedString
    {
        
        // Where do we want to get the text info from ( source )
        let changedText = EKGDescription.InferiorWall
        
        let attributedText = NSMutableAttributedString.getAttributedString(fromString: changedText.rawValue)
        
        // Change the colors of the individual words within the text
        // Global string variable
        var changedString = String()
        
        let A = ""
        let B = ""
        let C = ""
        let D = ""
        let E = ""
        let F = ""
        let G = ""
        let H = ""
        
        // Change the text here
        if text.contains(A) {
            changedString = A
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.1686089337, green: 0.1686392725, blue: 0.1686022878, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        // Change the text here
        if text.contains(G) {
            changedString = G
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.9925034642, green: 0.8121734858, blue: 0, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        // Change the text here
        if text.contains(H) {
            changedString = H
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.9925034642, green: 0.8121734858, blue: 0, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        
        // Change the text here
        if text.contains(F) {
            changedString = F
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.9925034642, green: 0.8121734858, blue: 0, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        
        if text.contains(C) {
            changedString = C
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.150000006, green: 0.1899999976, blue: 0.2399999946, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        if text.contains(B) {
            changedString = B
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.150000006, green: 0.1899999976, blue: 0.2399999946, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
            
        }
        
        if text.contains(D) {
            changedString = D
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.9925034642, green: 0.8121734858, blue: 0, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
            
        }
        
        
        if text.contains(E) {
            changedString = E
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

//MARK: - Lateral Wall
extension _12Lead_Collection_VC {
    
    func lateralWall_Attribute(text: String) -> NSAttributedString
    {
        
        // Where do we want to get the text info from ( source )
        let changedText = EKGDescription.LateralWall
        
        let attributedText = NSMutableAttributedString.getAttributedString(fromString: changedText.rawValue)
        
        // Change the colors of the individual words within the text
        // Global string variable
        var changedString = String()
        
        let A = ""
        let B = ""
        let C = ""
        let D = ""
        let E = ""
        let F = ""
        let G = ""
        let H = ""
        
        // Change the text here
        if text.contains(A) {
            changedString = A
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.1686089337, green: 0.1686392725, blue: 0.1686022878, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        // Change the text here
        if text.contains(G) {
            changedString = G
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.9925034642, green: 0.8121734858, blue: 0, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        // Change the text here
        if text.contains(H) {
            changedString = H
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.9925034642, green: 0.8121734858, blue: 0, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        
        // Change the text here
        if text.contains(F) {
            changedString = F
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.9925034642, green: 0.8121734858, blue: 0, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        
        if text.contains(C) {
            changedString = C
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.150000006, green: 0.1899999976, blue: 0.2399999946, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        if text.contains(B) {
            changedString = B
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.150000006, green: 0.1899999976, blue: 0.2399999946, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
            
        }
        
        if text.contains(D) {
            changedString = D
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.9925034642, green: 0.8121734858, blue: 0, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
            
        }
        
        
        if text.contains(E) {
            changedString = E
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

//MARK: - Brugadas
extension _12Lead_Collection_VC {
    
    func brugada_Attribute(text: String) -> NSAttributedString
    {
        
        // Where do we want to get the text info from ( source )
        let changedText = EKGDescription.BrugadaSyndrome
        
        let attributedText = NSMutableAttributedString.getAttributedString(fromString: changedText.rawValue)
        
        // Change the colors of the individual words within the text
        // Global string variable
        var changedString = String()
        
        let A = ""
        let B = ""
        let C = ""
        let D = ""
        let E = ""
        let F = ""
        let G = ""
        let H = ""
        
        // Change the text here
        if text.contains(A) {
            changedString = A
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.1686089337, green: 0.1686392725, blue: 0.1686022878, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        // Change the text here
        if text.contains(G) {
            changedString = G
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.9925034642, green: 0.8121734858, blue: 0, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        // Change the text here
        if text.contains(H) {
            changedString = H
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.9925034642, green: 0.8121734858, blue: 0, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        
        // Change the text here
        if text.contains(F) {
            changedString = F
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.9925034642, green: 0.8121734858, blue: 0, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        
        if text.contains(C) {
            changedString = C
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.150000006, green: 0.1899999976, blue: 0.2399999946, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        if text.contains(B) {
            changedString = B
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.150000006, green: 0.1899999976, blue: 0.2399999946, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
            
        }
        
        if text.contains(D) {
            changedString = D
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.9925034642, green: 0.8121734858, blue: 0, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
            
        }
        
        
        if text.contains(E) {
            changedString = E
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

//MARK: - Wellen's Syndrome
extension _12Lead_Collection_VC {
    
    func wellens_Attribute(text: String) -> NSAttributedString
    {
        
        // Where do we want to get the text info from ( source )
        let changedText = EKGDescription.WellensCriteria
        
        let attributedText = NSMutableAttributedString.getAttributedString(fromString: changedText.rawValue)
        
        // Change the colors of the individual words within the text
        // Global string variable
        var changedString = String()
        
        let A = ""
        let B = ""
        let C = ""
        let D = ""
        let E = ""
        let F = ""
        let G = ""
        let H = ""
        
        // Change the text here
        if text.contains(A) {
            changedString = A
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.1686089337, green: 0.1686392725, blue: 0.1686022878, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        // Change the text here
        if text.contains(G) {
            changedString = G
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.9925034642, green: 0.8121734858, blue: 0, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        // Change the text here
        if text.contains(H) {
            changedString = H
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.9925034642, green: 0.8121734858, blue: 0, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        
        // Change the text here
        if text.contains(F) {
            changedString = F
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.9925034642, green: 0.8121734858, blue: 0, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        
        if text.contains(C) {
            changedString = C
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.150000006, green: 0.1899999976, blue: 0.2399999946, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        if text.contains(B) {
            changedString = B
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.150000006, green: 0.1899999976, blue: 0.2399999946, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
            
        }
        
        if text.contains(D) {
            changedString = D
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.9925034642, green: 0.8121734858, blue: 0, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
            
        }
        
        
        if text.contains(E) {
            changedString = E
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

//MARK: - Sgarbossas
extension _12Lead_Collection_VC {
    
    func sgarbossas_Attribute(text: String) -> NSAttributedString
    {
        
        // Where do we want to get the text info from ( source )
        let changedText = EKGDescription.SgarbossasCriteria
        
        let attributedText = NSMutableAttributedString.getAttributedString(fromString: changedText.rawValue)
        
        // Change the colors of the individual words within the text
        // Global string variable
        var changedString = String()
        
        let A = ""
        let B = ""
        let C = ""
        let D = ""
        let E = ""
        let F = ""
        let G = ""
        let H = ""
        
        // Change the text here
        if text.contains(A) {
            changedString = A
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.1686089337, green: 0.1686392725, blue: 0.1686022878, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        // Change the text here
        if text.contains(G) {
            changedString = G
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.9925034642, green: 0.8121734858, blue: 0, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        // Change the text here
        if text.contains(H) {
            changedString = H
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.9925034642, green: 0.8121734858, blue: 0, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        
        // Change the text here
        if text.contains(F) {
            changedString = F
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.9925034642, green: 0.8121734858, blue: 0, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        
        if text.contains(C) {
            changedString = C
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.150000006, green: 0.1899999976, blue: 0.2399999946, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
        }
        
        if text.contains(B) {
            changedString = B
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.150000006, green: 0.1899999976, blue: 0.2399999946, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
            
        }
        
        if text.contains(D) {
            changedString = D
            // Set the string to the changed String so its set at the end
            
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.9925034642, green: 0.8121734858, blue: 0, alpha: 1), subString: changedString)
            //attributedText.underLine(subString: changedString)            // declare the font of the singled out text
            let customFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            
            // Change the font of the string
            attributedText.apply(font: customFont!, subString: changedString)
            
            
        }
        
        
        if text.contains(E) {
            changedString = E
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
