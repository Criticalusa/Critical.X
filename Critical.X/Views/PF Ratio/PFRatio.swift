//
//  ViewController.swift
//  F Ratio
//
//  Created by Jadie Barringer III on 1/6/18.
//  Copyright © 2018 Jadie Barringer III. All rights reserved.
//

import UIKit

class PFRatio: UIViewController {
    
    
    // MARK: - Outlets
    @IBOutlet weak var pa02txt: UITextField!
    @IBOutlet weak var fi02txt: UITextField!
    @IBOutlet weak var ardsLabel: UILabel!
    @IBOutlet weak var pfResultLabel: UILabel!
    @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var pFDescriptionLabel: UILabel!
    @IBOutlet weak var pfResultsView: UIView!
    @IBOutlet weak var closeMainButton: UIButton!

    
    // MARK: - View Did Load
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Hide result View initially
        pfResultsView.isHidden = true
        
        
        // Takes the button and makes it into a circle
        closeButton.layer.cornerRadius = closeButton.frame.size.width / 2
        
        /// Rounds the corners 15 pixels of the UIView name
        pfResultsView.clipsToBounds = true
        pfResultsView.layer.cornerRadius = 15
        
        /// Rounds the corners 15 pixels of the Button name
        calculateButton.clipsToBounds = true
        calculateButton.layer.cornerRadius = 4
        
    }
    
    // Closes the keyboard befor ethe view is dismissed
    override func viewWillDisappear(_ animated: Bool) {
        self.view.endEditing(true)
    }
    
    
    // MARK: - Calculate PF Ratio Function
    func calculatePFRatio(){
        
        
       
        //crate the variables from the textFields
        let pa02Value = Double(pa02txt.text!)
        let fi02Value = Double(fi02txt.text!)
        
        let pa02 = pa02Value
        let fi02 = fi02Value
        
        guard let _ = pa02Value, let _ = fi02Value else {
            
            // if the text results are missing, hide the result value
            pfResultsView.isHidden = true
           
            self.view.endEditing(true) //This will hide the keyboard

            _ = SCLAlertView().showError("Error!", subTitle:"Enter a Pa02 and Fi02 to calculate.", closeButtonTitle:"Got it")
            
            print("Field is missing")
            
            return
            
        }
        //Create the result to use to pass into the function.
        let finalPFRatioResult = (pa02! / fi02!) * 100
        
        //takes the result and shortens the string
        //        let shortResult = String(format:"%.1f",pfResult1.rounded()) // Rounds to the 1st decimal place
        
        //Update the result and rounds it up
        pfResultLabel.text = "\(Int(finalPFRatioResult.rounded(.up)))"
        
        //Updates the description label
        pFDescriptionLabel.text = "With a Pa02 of \(Int(pa02!)) and an Fi02 at \(Int(fi02!))%, the P/F Ratio is"
        
        
        if finalPFRatioResult < 100 {
            
            ardsLabel.text = "ARDS, severe hypoxemia."
            ardsLabel.textColor = Colorify.Alizarin
            pfResultLabel.textColor = #colorLiteral(red: 0.9060000181, green: 0.2980000079, blue: 0.2349999994, alpha: 1)
            
            //Print statement
            print("P/F Ratio is < 100 at \(finalPFRatioResult). Patient has severe ARDS. ")
            
        } else if (finalPFRatioResult >= 100) && (finalPFRatioResult <= 200){
            
            ardsLabel.text = "ARDS, moderate hypoxemia."
            ardsLabel.textColor = Colorify.Carrot
            pfResultLabel.textColor = #colorLiteral(red: 0.90200001, green: 0.4939999878, blue: 0.1330000013, alpha: 1)

            //Print statement
            print("P/F Ratio is 100-200 at \(finalPFRatioResult). Patient has Moderate ARDS. ")
            
        }else if (finalPFRatioResult >= 200) && (finalPFRatioResult <= 300){
            
            ardsLabel.text = "ARDS, Mild hypoxemia."
            ardsLabel.textColor = Colorify.Blue
            pfResultLabel.textColor = #colorLiteral(red: 0.1289999932, green: 0.5879999995, blue: 0.9530000091, alpha: 1)

            //Print statement
            print("P/F Ratio is 200-300 at \(finalPFRatioResult). Patient has Mild ARDS. ")
            
        }else {
            
            ardsLabel.text = "Lungs are good."
            ardsLabel.textColor = Colorify.Emerald
            pfResultLabel.textColor = #colorLiteral(red: 0.1800000072, green: 0.8000000119, blue: 0.4429999888, alpha: 1)

            
            //Print statement
            print("P/F Ratio is > 300 at \(finalPFRatioResult). Lungs are good. ")
            
        }
        
        self.view.endEditing(true) //This will hide the keyboard

        print(finalPFRatioResult)
        
    }
    
    // MARK: - Animate In
    func showAnimate()
    {
        self.pfResultsView.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.pfResultsView.alpha = 0.0;
        UIView.animate(withDuration: 0.25, animations: {
            self.pfResultsView.alpha = 1.0
            self.pfResultsView.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        });
        
        //Animate the ARDS description Label a little bit longer than the other contents on the view
        self.ardsLabel.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.ardsLabel.alpha = 0.0;
        
    //Animation for 1.5 seconds to come in after the results are displayed.
        UIView.animate(withDuration: 1.5, animations: {
            self.ardsLabel.alpha = 1.0
            self.ardsLabel.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        })
    }
    
    
    //MARK: - Calculate Action
    @IBAction func calculatePFRatio(_ sender: Any) {
        pfResultsView.isHidden = false
        calculatePFRatio()
        showAnimate()
    }
    // Dismisses the keyboard when the user taps on the outside of any textField
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true) //This will hide the keyboard
    }
    
    @IBAction func closePFRatio(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        print("View Controller was dismissed")
        
    }
}
