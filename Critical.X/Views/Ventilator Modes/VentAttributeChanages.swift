//
//  VentAttributeChanages.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 1/31/19.
//  Copyright © 2019 Jadie Barringer III. All rights reserved.
//

import Foundation
import UIKit

extension VentMode_detailVC {
    // Creat attributes for the modes
    
    //MARK: - Change AC
    func changeString_AssistControl() {
        
        // Where are we getting the text From
        let text = VentilatorModes.AC.rawValue
        
        // Set the attribute to the text
        let attributedText = NSMutableAttributedString.getAttributedString(fromString: text)
        
        var changedString = String()
        
        // What text to change
        let ac = "Assist control or (A/C)"
        let whatToKnow = "What to know:"
        let bottomLine = "Bottom Line"
        
        if text.contains(bottomLine){
            changedString = bottomLine
            // Set the string to the changed String so its set at the end
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), subString: changedString)
            
            let openSansFont = UIFont(name: "HelveticaNeue-Bold", size: 14.0)
            // Change the font of the string
            attributedText.apply(font: openSansFont!, subString: changedString)
        }
        
        if text.contains(ac){
            changedString = ac
            // Set the string to the changed String so its set at the end
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1), subString: changedString)
            
            let openSansFont = UIFont(name: "HelveticaNeue-Bold", size: 14.0)
            // Change the font of the string
            attributedText.apply(font: openSansFont!, subString: changedString)
        }
        
        if text.contains(whatToKnow){
            changedString = whatToKnow
            // Set the string to the changed String so its set at the end
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), subString: changedString)
            
            let openSansFont = UIFont(name: "HelveticaNeue-Bold", size: 14.0)
            // Change the font of the string
            attributedText.apply(font: openSansFont!, subString: changedString)
        }
        // Set the label to the attribute
        self.descriptionLabel.attributedText = attributedText
    }
    
    
    
    //MARK: - Change APRV
    func changeString_APRV() {
        
        // Where are we getting the text From
        let text = VentilatorModes.APRV.rawValue
        
        // Set the attribute to the text
        let attributedText = NSMutableAttributedString.getAttributedString(fromString: text)
        
        var changedString = String()
        
        // What text to change
        let aprv = "Airway Pressure Release Ventilation (APRV)"
        let whatToKnow = "What to know:"
        let basic = "There are four basic settings that need to be set initially:"
        let modes = "P-High, T-High, P-Low, and T-Low."
        let pHigh = "1. P-High: "
        let pLow = "3. P-Low:"
        let tHigh = "2. T-High:"
        let tLow = "4. T-Low:"
        
        
        if text.contains(tLow){
            changedString = tLow
            // Set the string to the changed String so its set at the end
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), subString: changedString)
            
            let openSansFont = UIFont(name: "HelveticaNeue-Bold", size: 14.0)
            // Change the font of the string
            attributedText.apply(font: openSansFont!, subString: changedString)
        }
        
        if text.contains(tHigh){
            changedString = tHigh
            // Set the string to the changed String so its set at the end
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), subString: changedString)
            
            let openSansFont = UIFont(name: "HelveticaNeue-Bold", size: 14.0)
            // Change the font of the string
            attributedText.apply(font: openSansFont!, subString: changedString)
        }
        if text.contains(pLow){
            changedString = pLow
            // Set the string to the changed String so its set at the end
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), subString: changedString)
            
            let openSansFont = UIFont(name: "HelveticaNeue-Bold", size: 14.0)
            // Change the font of the string
            attributedText.apply(font: openSansFont!, subString: changedString)
        }
        
        if text.contains(pHigh){
            changedString = pHigh
            // Set the string to the changed String so its set at the end
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), subString: changedString)
            
            let openSansFont = UIFont(name: "HelveticaNeue-Bold", size: 14.0)
            // Change the font of the string
            attributedText.apply(font: openSansFont!, subString: changedString)
        }
        
        if text.contains(modes){
            changedString = modes
            // Set the string to the changed String so its set at the end
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), subString: changedString)
            
            let openSansFont = UIFont(name: "HelveticaNeue-Bold", size: 14.0)
            // Change the font of the string
            attributedText.apply(font: openSansFont!, subString: changedString)
        }
        
        if text.contains(basic){
            changedString = basic
            // Set the string to the changed String so its set at the end
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1), subString: changedString)
            
            let openSansFont = UIFont(name: "HelveticaNeue-Bold", size: 14.0)
            // Change the font of the string
            attributedText.apply(font: openSansFont!, subString: changedString)
        }
        if text.contains(aprv){
            changedString = aprv
            // Set the string to the changed String so its set at the end
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1), subString: changedString)
            
            let openSansFont = UIFont(name: "HelveticaNeue-Bold", size: 14.0)
            // Change the font of the string
            attributedText.apply(font: openSansFont!, subString: changedString)
        }
        
        if text.contains(whatToKnow){
            changedString = whatToKnow
            // Set the string to the changed String so its set at the end
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), subString: changedString)
            
            let openSansFont = UIFont(name: "HelveticaNeue-Bold", size: 14.0)
            // Change the font of the string
            attributedText.apply(font: openSansFont!, subString: changedString)
        }
        
        // Set the label to the attribute
        self.descriptionLabel.attributedText = attributedText
}

    
    //MARK: - Change Bilevel
    func changeString_Bilevel() {
        
        // Where are we getting the text From
        let text = VentilatorModes.Bipap.rawValue
        
        // Set the attribute to the text
        let attributedText = NSMutableAttributedString.getAttributedString(fromString: text)
        
        var changedString = String()
        
        // What text to change
        let whatToKnow = "What to know:"
        let bottomLine = "Bottom Line:"
        let One = "Bilevel Positive Airway Pressure"
        let two = "There are four basic settings that need to be set initially:"
        let three = "This minimum pressure helps to keep disease airways and alveoli from collapsing"
        let four = "Noninvasive ventilation does not provide enough support for very sick patients."
        let five = "3. P-Low:"
        let six = "2. T-High:"
        let seven = "4. T-Low:"
        
        
        if text.contains(seven){
            changedString = seven
            // Set the string to the changed String so its set at the end
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1), subString: changedString)
            
            let openSansFont = UIFont(name: "HelveticaNeue-Bold", size: 14.0)
            // Change the font of the string
            attributedText.apply(font: openSansFont!, subString: changedString)
        }
        
        if text.contains(six){
            changedString = six
            // Set the string to the changed String so its set at the end
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1), subString: changedString)
            
            let openSansFont = UIFont(name: "HelveticaNeue-Bold", size: 14.0)
            // Change the font of the string
            attributedText.apply(font: openSansFont!, subString: changedString)
        }
        if text.contains(five){
            changedString = five
            // Set the string to the changed String so its set at the end
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1), subString: changedString)
            
            let openSansFont = UIFont(name: "HelveticaNeue-Bold", size: 14.0)
            // Change the font of the string
            attributedText.apply(font: openSansFont!, subString: changedString)
        }
        
        if text.contains(four){
            changedString = four
            // Set the string to the changed String so its set at the end
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1), subString: changedString)
            
            let openSansFont = UIFont(name: "HelveticaNeue-Bold", size: 14.0)
            // Change the font of the string
            attributedText.apply(font: openSansFont!, subString: changedString)
        }
        
        if text.contains(three){
            changedString = three
            // Set the string to the changed String so its set at the end
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1), subString: changedString)
            
            let openSansFont = UIFont(name: "HelveticaNeue-Bold", size: 14.0)
            // Change the font of the string
            attributedText.apply(font: openSansFont!, subString: changedString)
        }
        
        if text.contains(two){
            changedString = two
            // Set the string to the changed String so its set at the end
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1), subString: changedString)
            
            let openSansFont = UIFont(name: "HelveticaNeue-Bold", size: 14.0)
            // Change the font of the string
            attributedText.apply(font: openSansFont!, subString: changedString)
        }
        if text.contains(One){
            changedString = One
            // Set the string to the changed String so its set at the end
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1), subString: changedString)
            
            let openSansFont = UIFont(name: "HelveticaNeue-Bold", size: 14.0)
            // Change the font of the string
            attributedText.apply(font: openSansFont!, subString: changedString)
        }
        
        if text.contains(whatToKnow){
            changedString = whatToKnow
            // Set the string to the changed String so its set at the end
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), subString: changedString)
            
            let openSansFont = UIFont(name: "HelveticaNeue-Bold", size: 14.0)
            // Change the font of the string
            attributedText.apply(font: openSansFont!, subString: changedString)
        }
        
        if text.contains(bottomLine){
            changedString = bottomLine
            // Set the string to the changed String so its set at the end
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), subString: changedString)
            
            let openSansFont = UIFont(name: "HelveticaNeue-Bold", size: 14.0)
            // Change the font of the string
            attributedText.apply(font: openSansFont!, subString: changedString)
        }
        
        
        // Set the label to the attribute
        self.descriptionLabel.attributedText = attributedText
    }

    //MARK: - Change CPAP
    func changeString_CPAP() {
        
        // Where are we getting the text From
        let text = VentilatorModes.CPAP.rawValue
        
        // Set the attribute to the text
        let attributedText = NSMutableAttributedString.getAttributedString(fromString: text)
        
        var changedString = String()
        
        // What text to change
        let whatToKnow = "What to know:"
        let bottomLine = "Bottom Line:"
        let One = "The patient must be able to generate a  breath to use this mode."
        let two = "Placing an apenic patient on CPAP will cause the patient to code"
        let three = "This minimum pressure helps to keep disease airways and alveoli from collapsing"
        let four = "Noninvasive ventilation does not provide enough support for very sick patients."
        let five = "3. P-Low:"
        let six = "2. T-High:"
        let seven = "4. T-Low:"
        
        
        if text.contains(seven){
            changedString = seven
            // Set the string to the changed String so its set at the end
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1), subString: changedString)
            
            let openSansFont = UIFont(name: "HelveticaNeue-Bold", size: 14.0)
            // Change the font of the string
            attributedText.apply(font: openSansFont!, subString: changedString)
        }
        
        if text.contains(six){
            changedString = six
            // Set the string to the changed String so its set at the end
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1), subString: changedString)
            
            let openSansFont = UIFont(name: "HelveticaNeue-Bold", size: 14.0)
            // Change the font of the string
            attributedText.apply(font: openSansFont!, subString: changedString)
        }
        if text.contains(five){
            changedString = five
            // Set the string to the changed String so its set at the end
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1), subString: changedString)
            
            let openSansFont = UIFont(name: "HelveticaNeue-Bold", size: 14.0)
            // Change the font of the string
            attributedText.apply(font: openSansFont!, subString: changedString)
        }
        
        if text.contains(four){
            changedString = four
            // Set the string to the changed String so its set at the end
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1), subString: changedString)
            
            let openSansFont = UIFont(name: "HelveticaNeue-Bold", size: 14.0)
            // Change the font of the string
            attributedText.apply(font: openSansFont!, subString: changedString)
        }
        
        if text.contains(three){
            changedString = three
            // Set the string to the changed String so its set at the end
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1), subString: changedString)
            
            let openSansFont = UIFont(name: "HelveticaNeue-Bold", size: 14.0)
            // Change the font of the string
            attributedText.apply(font: openSansFont!, subString: changedString)
        }
        
        if text.contains(two){
            changedString = two
            // Set the string to the changed String so its set at the end
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.7378575206, green: 0.2320150733, blue: 0.1414205134, alpha: 1) , subString: changedString)
            
            let openSansFont = UIFont(name: "HelveticaNeue-Bold", size: 14.0)
            // Change the font of the string
            attributedText.apply(font: openSansFont!, subString: changedString)
        }
        if text.contains(One){
            changedString = One
            // Set the string to the changed String so its set at the end
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1), subString: changedString)
            
            let openSansFont = UIFont(name: "HelveticaNeue-Bold", size: 14.0)
            // Change the font of the string
            attributedText.apply(font: openSansFont!, subString: changedString)
        }
        
        if text.contains(whatToKnow){
            changedString = whatToKnow
            // Set the string to the changed String so its set at the end
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), subString: changedString)
            
            let openSansFont = UIFont(name: "HelveticaNeue-Bold", size: 14.0)
            // Change the font of the string
            attributedText.apply(font: openSansFont!, subString: changedString)
        }
        
        if text.contains(bottomLine){
            changedString = bottomLine
            // Set the string to the changed String so its set at the end
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), subString: changedString)
            
            let openSansFont = UIFont(name: "HelveticaNeue-Bold", size: 14.0)
            // Change the font of the string
            attributedText.apply(font: openSansFont!, subString: changedString)
        }
        
        
        // Set the label to the attribute
        self.descriptionLabel.attributedText = attributedText
    }
    
    
    
    
    
    //MARK: - Change IMV
    func changeString_IMV() {
        
        // Where are we getting the text From
        let text = VentilatorModes.IMV.rawValue
        
        // Set the attribute to the text
        let attributedText = NSMutableAttributedString.getAttributedString(fromString: text)
        
        var changedString = String()
        
        // What text to change
        let whatToKnow = "What to know:"
        let bottomLine = "Bottom Line:"
        let One = "Bilevel Positive Airway Pressure"
        let two = "There are four basic settings that need to be set initially:"
        let three = "This minimum pressure helps to keep disease airways and alveoli from collapsing"
        let four = "Noninvasive ventilation does not provide enough support for very sick patients."
        let five = "3. P-Low:"
        let six = "2. T-High:"
        let seven = "4. T-Low:"
        
        
        if text.contains(seven){
            changedString = seven
            // Set the string to the changed String so its set at the end
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), subString: changedString)
            
            let openSansFont = UIFont(name: "HelveticaNeue-Bold", size: 14.0)
            // Change the font of the string
            attributedText.apply(font: openSansFont!, subString: changedString)
        }
        
        if text.contains(six){
            changedString = six
            // Set the string to the changed String so its set at the end
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), subString: changedString)
            
            let openSansFont = UIFont(name: "HelveticaNeue-Bold", size: 14.0)
            // Change the font of the string
            attributedText.apply(font: openSansFont!, subString: changedString)
        }
        if text.contains(five){
            changedString = five
            // Set the string to the changed String so its set at the end
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), subString: changedString)
            
            let openSansFont = UIFont(name: "HelveticaNeue-Bold", size: 14.0)
            // Change the font of the string
            attributedText.apply(font: openSansFont!, subString: changedString)
        }
        
        if text.contains(four){
            changedString = four
            // Set the string to the changed String so its set at the end
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1), subString: changedString)
            
            let openSansFont = UIFont(name: "HelveticaNeue-Bold", size: 14.0)
            // Change the font of the string
            attributedText.apply(font: openSansFont!, subString: changedString)
        }
        
        if text.contains(three){
            changedString = three
            // Set the string to the changed String so its set at the end
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1), subString: changedString)
            
            let openSansFont = UIFont(name: "HelveticaNeue-Bold", size: 14.0)
            // Change the font of the string
            attributedText.apply(font: openSansFont!, subString: changedString)
        }
        
        if text.contains(two){
            changedString = two
            // Set the string to the changed String so its set at the end
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1), subString: changedString)
            
            let openSansFont = UIFont(name: "HelveticaNeue-Bold", size: 14.0)
            // Change the font of the string
            attributedText.apply(font: openSansFont!, subString: changedString)
        }
        if text.contains(One){
            changedString = One
            // Set the string to the changed String so its set at the end
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1), subString: changedString)
            
            let openSansFont = UIFont(name: "HelveticaNeue-Bold", size: 14.0)
            // Change the font of the string
            attributedText.apply(font: openSansFont!, subString: changedString)
        }
        
        if text.contains(whatToKnow){
            changedString = whatToKnow
            // Set the string to the changed String so its set at the end
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), subString: changedString)
            
            let openSansFont = UIFont(name: "HelveticaNeue-Bold", size: 14.0)
            // Change the font of the string
            attributedText.apply(font: openSansFont!, subString: changedString)
        }
        
        if text.contains(bottomLine){
            changedString = bottomLine
            // Set the string to the changed String so its set at the end
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), subString: changedString)
            
            let openSansFont = UIFont(name: "HelveticaNeue-Bold", size: 14.0)
            // Change the font of the string
            attributedText.apply(font: openSansFont!, subString: changedString)
        }
        
        
        // Set the label to the attribute
        self.descriptionLabel.attributedText = attributedText
    }

    
    
    
    
    
}// End of extension
