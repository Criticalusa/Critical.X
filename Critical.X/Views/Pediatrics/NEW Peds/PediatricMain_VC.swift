//
//  PediatricMain_VC.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 2/4/19.
//  Copyright © 2019 Jadie Barringer III. All rights reserved.
//

import UIKit

class PediatricMain_VC: UIViewController {

    
    @IBOutlet weak var pediatricWeightButton: UIButton!
    @IBOutlet weak var pediatrictextField: UITextField!
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        let path = UIBezierPath(roundedRect:pedsMainUIViewCurveOverlap.bounds, byRoundingCorners:[.topLeft, .topRight], cornerRadii: CGSize(width: 20, height: 20)) //Change the numbers for radius
//        let maskLayer = CAShapeLayer()
//        maskLayer.path = path.cgPath
//        pedsMainUIViewCurveOverlap.layer.mask = maskLayer
        
        
        
        // adding a drop shadow
        //        pedsMainUIViewCurveOverlap.layer.shadowColor = UIColor.gray.cgColor
        //        pedsMainUIViewCurveOverlap.layer.shadowOffset = CGSize(width: 3, height: 3)
        //        pedsMainUIViewCurveOverlap.layer.shadowOpacity = 0.7
        //        pedsMainUIViewCurveOverlap.layer.shadowRadius = 4.0
        
        // adding a border to the radius
        //        pedsMainUIViewCurveOverlap.layer.borderWidth = 1.0
        //        pedsMainUIViewCurveOverlap.layer.borderColor = UIColor.black.cgColor // make sure that the color matches the UIView.
        
        
        /// Rounds the corners 4 pixels of the button name. 4 px for a button
        pediatricWeightButton.clipsToBounds = true
        pediatricWeightButton.layer.cornerRadius = 4
        
        
        // Takes the button and makes it into a circle
        //dismissButton.layer.cornerRadius = dismissButton.frame.size.width / 2
    }
    
    override public func viewWillAppear(_ animated: Bool) {
        // Runs the animation code for the label and button to show when the VC appears
        showAnimate()
    }
    
    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: - Exiting Methods
    
    // Closes the keyboard befor ethe view is dismissed
    override public func viewWillDisappear(_ animated: Bool) {
        self.view.endEditing(true)
    }
    
    
    // Dismisses the keyboard when the user taps on the outside of any textField
    
    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true) //This will hide the keyboard
    }
    
    
    
    
    /// Keyboard Dismissed after you touch the screen
    func doneButtonAction() {
        self.view.endEditing(true)
    }
    // Dismisses the view controller.
    @IBAction func dismissPedsViewControll(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
        print("Pediatric Main ViewController was closed")
    }
    //MARK: Connected to the new View Controller
    @IBAction func calculateDataButton(_ sender: UIButton) {
        
        
        /// if the textField is empty. the text will be set to zero and the UI Alert will come up.
        guard let theText = pediatrictextField.text, theText.isEmpty else {
            // theText is empty
            print("the weight textField is empty")
            return // or throw
        }
        
        // Sets the textField to empty after its not filled out. That way if theres an Int there, the segue will perform. So set to ""
        pediatrictextField.text = ""
        
        // Displays UI Alert, alerting the user to set a value to proceed.
        let alert = UIAlertController(title: "Whoops!", message:  "Enter a weight greater than 0, and less than 80 kg's., then calcualte.", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Got it", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert,animated: true, completion: nil)
        
        
    }
    //MARK: Prepare for the SEGUE
    override public func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        ///// Checks the segue destination, grabs the number value from the textfield and passes the data.
        if let destination = segue.destination as? Pediatric_DetailVC {
            
            //Takes the Double (weightEntered) variable from the detail page, and parses it as the textFireld (Double) becuase the textField is oridescriptionsted as a string.
            destination.weightEntered = Double (pediatrictextField.text!)
            
            
            print("Transitioned to the detailed View screen")
        }
        
        
        
    }
    
    //MARK: - Animation
    /**
     Animates the transitions
     - Transitions:
     - UIView Animate with duration: Time it takes to animate
     - Transoform : Current Bicarb Value
     
     Change the duration to adjust the time you want the animation to happen. Also, replace the view or label to your choice.
     */
    func showAnimate()
    {
        // Animation for the Results UIView
        self.pediatrictextField.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.pediatrictextField.alpha = 0.0;
        
        UIView.animate(withDuration: 0.25, animations: {
            self.pediatrictextField.alpha = 1.0
            self.pediatrictextField.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        })
        
        // Animation for the label to come in a little later
        self.pediatricWeightButton.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.pediatricWeightButton.alpha = 0.0;
        
        UIView.animate(withDuration: 1.5, animations: {
            self.pediatricWeightButton.alpha = 1.0
            self.pediatricWeightButton.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        })
        
    }

}
