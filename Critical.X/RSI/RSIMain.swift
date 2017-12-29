//
//  RSIMain.swift
//  Critical_X_RSI
//
//  Created by Jadie Barringer III on 12/27/17.
//  Copyright © 2017 Jadie Barringer III. All rights reserved.
//

import UIKit

class RSIMain: UIViewController {
   
    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var rsiTextField: UITextField!
    
//    var calculatedNumber: String = ""
    
    
    
    //MARK: ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        
        
        // Takes the button and makes it into a circle
        closeButton.layer.cornerRadius = closeButton.frame.size.width / 2
        
    }


    //MARK: Prepare for the SEGUE
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
//        calculatedNumber = rsiTextField.text!
        
            ///// Checks the segue destination, grabs the number value from the textfield and passes the data.
            if let destination = segue.destination as? RSIDetail {
                
                //Takes the Double (weightEntered) variable from the detail page, and parses it as the textFireld (Double) becuase the textField is origionally casted as a string.
                destination.weightEntered = Double (rsiTextField.text!)
                
            }

        }
    
    
    @IBAction func RSIMain(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        closeButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: Selector(("buttonTapped"))))

    }
  
    
    
    
    
    
    
    
}


