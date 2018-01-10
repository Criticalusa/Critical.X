//
//  ViewController.swift
//  Parkland Formula
//
//  Created by Jadie Barringer III on 1/10/18.
//  Copyright © 2018 Jadie Barringer III. All rights reserved.
//

import UIKit


class ParklandFormula: UIViewController {

    
    //Outlets
    @IBOutlet weak var parklandResultsView: UIView!
    @IBOutlet weak var infusionView: UIView!
    @IBOutlet weak var infusionLabel: UILabel!
    
    @IBOutlet weak var weightTxt: UITextField!
    @IBOutlet weak var tbsaTxt: UITextField!
    @IBOutlet weak var resultsLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /// Rounds the corners 15 pixels of the UIView name. 4 px for a button
        parklandResultsView.clipsToBounds = true
        parklandResultsView.layer.cornerRadius = 10
        parklandResultsView.isHidden = true
        
        
        infusionView.clipsToBounds = true
        infusionView.layer.cornerRadius = 10
        infusionView.isHidden = true
        
        button.clipsToBounds = true
        button.layer.cornerRadius = 4
    }
    
    
   
    /**
     Parkland Formula to calculated TBSA burns, by the formula: BSA % x Wt x 4mL ( for the first 24 hrs). 1/2 of this dose will be given in the first 8 hours and the remaining half given over 16 hours.
     - parameters:
     - TBSA: Total Body Surface Area
     - Weight: Weight in kg
     */
    
    func parklandFormulaCalculation(BSA: Double, Weight: Double) -> String {
        
        //Variables
        let parklandFormula = BSA * Weight * 4
        let firstEight = parklandFormula / 2
        let overSixteen = parklandFormula / 2
        print("parkland formula was calculated")

        return "With a weight of \(Weight) kg's and BSA of \(BSA)%, a total of \(parklandFormula.rounded()/1000) L  needs to be delivered over 24 hours.\n\nDeliver a total of \(firstEight.rounded()/1000) L over the first 8 hours.\n\nThe remaining \(overSixteen.rounded()/1000) L to be delivered over the last 16 hours."
        
    }
    
    func infusionRateCalculation(timeEight: Double, _ timeSixteen: Double) -> String {
        //Variables
        let BSA = Double(tbsaTxt.text!)
        let Weight = Double(weightTxt.text!)
        
        let parklandFormula = BSA! * Weight! * 4
        let firstEight = parklandFormula / 2
        let overSixteen = parklandFormula / 2
        
        let infusionRateEight = parklandFormula / timeEight
        let infusionRateSisteen = parklandFormula / timeSixteen
        

        return "To infuse \(firstEight.rounded()/1000) L's over 8 hrs., consider an infusion rate of \(infusionRateEight / 2 ) mL/hr.\n\nFor the final 16 hrs., consider an infusion rate of \(infusionRateSisteen / 2) mL/hr to infuse remainder \(overSixteen.rounded()/1000) L."
    }

    func analyzeParkland() {
        //Variables
        let burnPercentage = Double(tbsaTxt.text!)
        let weight = Double(weightTxt.text!)
        
        //Throw function if the textFields are not entirely filled out.
        guard (weight != nil), (burnPercentage != nil) else {
            print("Values not entered")
            
            //Enter Alert // Takes the button and makes it into a circle
            let alertController = UIAlertController(title: "Error!", message: "Enter both weight and BSA values, then recalculate.", preferredStyle: .alert)
            let action3 = UIAlertAction(title: "Ok, got it!", style: .destructive) { (action:UIAlertAction) in
                print("You've pressed the destructive");
            }
            
        
            alertController.addAction(action3)
            self.present(alertController, animated: true, completion: nil)
            
            parklandResultsView.isHidden = true
            
            return }
       
        //Sets the result label to the parkland fuction
        resultsLabel.text = parklandFormulaCalculation(BSA: burnPercentage!, Weight: weight!)
        
        //Unhides the view
        parklandResultsView.isHidden = false
        
        print("parkland formula was analyzed")

    }
        func showAnimate()
        {
            
            //Animates the result view in 0.25 SEconds
            self.parklandResultsView.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.parklandResultsView.alpha = 0.0;
           
            UIView.animate(withDuration: 0.25, animations: {
                self.parklandResultsView.alpha = 1.0
                self.parklandResultsView.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            })
            //Animates the infusion rate a little bit slower
            self.infusionView.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.infusionView.alpha = 0.0;
            
            UIView.animate(withDuration: 0.75, animations: {
                self.infusionView.alpha = 1.0
                self.infusionView.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            })
        }
        
    
    @IBAction func calculateParklandFormula(_ sender: Any) {
        
       let infusionRateDisply = infusionRateCalculation(timeEight: 8, 16)
        infusionLabel.text = infusionRateDisply
        
        analyzeParkland()
        infusionView.isHidden = false

        showAnimate()
        print("parkland formula was displayed")

    }
    
    @IBAction func dismissMainParkland(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        print("View Controller was dismissed")
        
    }
    // Dismisses the keyboard when the user taps on the outside of any textField
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true) //This will hide the keyboard
    }
    
    
    //Ends the class
    }





