//
//  ViewController.swift
//  O2TankCalculator
//
//  Created by Jadie Barringer III on 1/2/18.
//  Copyright © 2018 Jadie Barringer III. All rights reserved.
//

import UIKit

class O2TankCalculator: UIViewController {
    
    
    @IBOutlet weak var o2DetailView: UIView!
    
    @IBOutlet weak var psitTxt: KaedeTextField!
    
    @IBOutlet weak var litersMinTxt: KaedeTextField!
    
    @IBOutlet weak var resultsLabel: UILabel!
    
    @IBOutlet weak var segmento2: UISegmentedControl!
    
    @IBOutlet weak var minutesLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var calculateButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /// Rounds the corners 15 pixels of the UIView name
        o2DetailView.clipsToBounds = true
        o2DetailView.layer.cornerRadius = 15
        
        //Hides the view initally
        o2DetailView.isHidden = true
        
        
    }
    
    
    @IBAction func segment02(_ sender: Any) {
        
    }
    
    
    @IBAction func calculateO2(_ sender: Any) {
        
        let psi = Double(psitTxt.text!)
        let liters = Double(litersMinTxt.text!)
        let result = Double(resultsLabel.text!)
        
        /* Tank Conversion Coefficients
         Calculation is ((psi! - 200) * 0.16 / liters!)
         D = 0.16
         E = 0.28
         G = 2.41
         H/K = 3.14
         M = 1.56
         */
        let D: Double = ((psi! - 200) * 0.16 / liters!)
        let E: Double = ((psi! - 200) * 0.28 / liters!)
        let G: Double = ((psi! - 200) * 2.41 / liters!)
        let HK: Double = ((psi! - 200) * 3.14 / liters!)
        let M: Double = ((psi! - 200) * 1.56 / liters!)
        
        
        
        if (resultsLabel.text! > "0.0") {
            switch segmento2.selectedSegmentIndex {
            case 0:
                resultsLabel.text = String(format:"%.1f",D) // Rounds to the 1st decimal place
                print("Tank D was selected")
                o2DetailView.isHidden = false
                minutesLabel.text = "Minutes"
                descriptionLabel.text = "A D cylinder with \(psi!) PSI at \(liters!) L/min"
                showAnimate()
               
                if (resultsLabel.text! < "0.0") {
                   
                    minutesLabel.text = "Refill the tank"
                    
                    resultsLabel.text = "Tank is empty"
                    resultsLabel.textColor = UIColor.yellow
                    
                    o2DetailView.isHidden = false
                    
                    descriptionLabel.text = "Looks like the tank is"
                    descriptionLabel.textColor = UIColor.gray

                    showAnimate()
                }
                
            case 1:
                resultsLabel.text = String(format:"%.1f",E)
                print("Tank E was selected")
                o2DetailView.isHidden = false
                minutesLabel.text = "Minutes"
                descriptionLabel.text = "An E cylinder at \(psi!) PSI at \(liters!) L/min"

                showAnimate()
                
            case 2:
                resultsLabel.text = String(format:"%.1f",G)
                print("Tank G was selected")
                o2DetailView.isHidden = false
                minutesLabel.text = "Minutes"
                
                descriptionLabel.text = "A G cylinder at \(psi!) PSI on \(liters!) L/min"


                showAnimate()
                
            case 3:
                resultsLabel.text = String(format:"%.1f",HK)
                print("Tank HK was selected")
                o2DetailView.isHidden = false
                minutesLabel.text = "Minutes"

                descriptionLabel.text = "An H/K cylinder at \(psi!) PSI on \(liters!) L/min"

                showAnimate()
                
            case 4:
                resultsLabel.text = String(format:"%.1f",M)
                print("Tank M was selected")
                o2DetailView.isHidden = false
                minutesLabel.text = "Minutes"

                descriptionLabel.text = "An M cylinder with \(psi!) PSI at \(liters!) L/min"

                showAnimate()
                
            default:
                break
            }
        }
        else if (resultsLabel.text! < "0.0") {
            minutesLabel.text = "Refill the tank"
            resultsLabel.text = "Tank is empty"
            o2DetailView.isHidden = false
            showAnimate()
        }
        
    }
    

    func showAnimate()
    {
        self.o2DetailView.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.o2DetailView.alpha = 0.0;
        UIView.animate(withDuration: 0.25, animations: {
            self.o2DetailView.alpha = 1.0
            self.o2DetailView.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        });
    }
    
    func removeAnimate()
    {
        UIView.animate(withDuration: 0.25, animations: {
            self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.view.alpha = 0.0;
        }, completion:{(finished : Bool)  in
            if (finished)
            {
                self.view.removeFromSuperview()
            }
        });
    }
    
    
    
}

