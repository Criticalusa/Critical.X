//
//  ViewController.swift
//  AnionGapCalculator
//
//  Created by Jadie Barringer III on 1/3/18.
//  Copyright © 2018 Jadie Barringer III. All rights reserved.
//

import UIKit
import AKLabel


class AnionGap: UIViewController {
    
    //Creates the outlets.
    @IBOutlet weak var NaTxt: UITextField!
    @IBOutlet weak var Cltxt: UITextField!
    @IBOutlet weak var hc03Txt: UITextField!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultView: UIView!
    @IBOutlet weak var closeAnionGapButton: UIButton!
    @IBOutlet weak var calculateButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        // Takes the button and makes it into a circle
        closeAnionGapButton.layer.cornerRadius = closeAnionGapButton.frame.size.width / 2
        resultView.isHidden = true
        
        /// Rounds the corners 15 pixels of the button name
        calculateButton.clipsToBounds = true
        calculateButton.layer.cornerRadius = 4
        
        /// Rounds the corners 15 pixels of the result view
        resultView.clipsToBounds = true
        resultView.layer.cornerRadius = 15
        
    }
    
    // Closes the keyboard before the view is dismissed
    override func viewWillDisappear(_ animated: Bool) {
        self.view.endEditing(true)
    }
    
    
    func calculateAnionGap(Sodium: Int, Chloride: Int, Bicarb: Int) -> Int {
        
        return Sodium - (Chloride + Bicarb)
    }
    
    func deltaGap() -> Int {
        
        let theSodium = Int(NaTxt.text!)
        let theChloride = Int(Cltxt.text!)
        
        guard let _ = theSodium, let _ = theChloride else {
            
            print("delta Gap crashing"); return 0}
        
        let deltaGapResult = (theSodium! - theChloride!) - 36
        
        return deltaGapResult
        
    }
    
    
    @IBAction func calculateTheAnionGap(_ sender: Any) {
        
        //Assign the variables
        let theSodium = Int(NaTxt.text!)
        let theChloride = Int(Cltxt.text!)
        let theBicarb = Int(hc03Txt.text!)
        
        let Sodium = theSodium
        let Chloride = theChloride
        let Bicarb = theBicarb
        let deltaGap = self.deltaGap()
        
        //Guard Statement to break out if the text fields aren't all filled in.
        guard let _ = Sodium, let _ = Chloride, let _ = Bicarb else {
            print("Text Field is crashing. Values not appropriate.")
            
            // Add alertView
            _ = SCLAlertView().showWarning("Hold On...", subTitle: "Check all of the fields before calculating.")
            
            
            return  }
        
        // Sets the text fields to these variables
        
        
        // Sets the Aniongap function to Result
        let result =  calculateAnionGap(Sodium:Sodium! , Chloride: Chloride!, Bicarb: Bicarb!)
        // Displays the result in the label
        resultLabel.text = "\(result)"
        // Sets the description label
        descriptionLabel.text = "The Delta Gap is \(deltaGap)"
        //        descriptionLabel.animate(text: "The Delta Gap is \(deltaGap)", duration: 3, completion: nil)
        
        //Condition statement for the delta gap.
        if deltaGap < -5 {
            descriptionLabel.text = "The Delta Gap is \(deltaGap).\nA mixed high and normal anion gap acidosis likely exists."
            //            descriptionLabel.animate (text: "The Delta Gap is \(deltaGap).\nA mixed high and normal anion gap acidosis likely exists.", duration: 3, completion: nil)
            
        } else if (deltaGap > -6) && (deltaGap < 6) {
            descriptionLabel.text = "The Delta Gap is \(deltaGap).\nOnly a high anion gap acidosis likely exists exists."
            //            descriptionLabel.animate (text: "The Delta Gap is \(deltaGap).\nOnly a high anion gap acidosis likely exists exists." , duration: 3, completion: nil)
            
            print("Delta should be greater than -6, but less than 6")
            
        } else if deltaGap > 6 {
            descriptionLabel.text = "The Delta Gap is \(deltaGap).\nA mixed high anion gap acidosis and metabolic alkalosis likely exist."
            //           descriptionLabel.animate(text: "The Delta Gap is \(deltaGap).\nA mixed high anion gap acidosis and metabolic alkalosis likely exist.", duration: 3, completion: nil)
            print("Delta should be greater than 6")
        } else {
            descriptionLabel.text = "The Delta Gap is \(deltaGap)."
            //            descriptionLabel.animate(text: "The Delta Gap is \(deltaGap).", duration: 3, completion: nil)
        }
        
        if result > 16 {
            resultLabel.textColor = #colorLiteral(red: 0.7451164126, green: 0.1563159525, blue: 0.07316986471, alpha: 1)
            
            print(" The anionGap is \(result)")
        } else {
            
            resultLabel.textColor = #colorLiteral(red: 0.6802619696, green: 0.9382658601, blue: 0.7976928353, alpha: 1)
            
            print(" The anionGap is \(result)")
            
        }
        
        self.view.endEditing(true) //This will hide the keyboard
        
        showAnimate()
    }
    
    
    //Creates the animates in function.
    func showAnimate()
    {
        resultView.isHidden = false
        
        self.resultView.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.resultView.alpha = 0.0;
        UIView.animate(withDuration: 0.25, animations: {
            self.resultView.alpha = 1.0
            self.resultView.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        });
    }
    
    @IBAction func dismissAnionGapMain(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        print("View Controller was dismissed")
        
    }
    // Dismisses the keyboard when the user taps on the outside of any textField
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true) //This will hide the keyboard
    }
}

