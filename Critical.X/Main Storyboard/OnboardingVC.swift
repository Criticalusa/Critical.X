//
//  onboardingVC.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 7/11/18.
//  Copyright © 2018 Jadie Barringer III. All rights reserved.
//

import UIKit
import AKLabel
import AlertOnboarding

var usernameEntered = String ()


class OnboardingVC: UIViewController, UITextFieldDelegate, AlertOnboardingDelegate {
    
   
   @IBOutlet weak var newButton: UIButton!
    
    //MARK: - AlertView Text
    var alertView: AlertOnboarding!
    
    //First, declare datas
    let arrayOfImage = ["CRITICALLogo_Circle", "dripUpdate", "RSIDose", "RSISettings", "Ultrasound"]
    let arrayOfTitle = ["Welcome to Critical!", "CUSTOMIZE DRIP DOSAGES", "RSI", "RSI Settings", "Ultrasound"]
    let arrayOfDescription =
        ["We hope you'll love the new update and features. We've added many customizable features to ensure the best clinical experience! Swipe to check out what's new!",
         
         "We've now made it possible that you can customize your own range dosages! Swipe left on the dose to update the range!",
         
         "Now have the ability customize and to see the concentration of the medication and mL's to be administered during RSI! ",
         
         "By going to the RSI settings, It's now possible to fully customize the RSI doses to match your local protocols",
         
         "Are you new to using the ultrasound machine? No problem! We've got you covered with a comprehensive overview of the different landmarks and views!"]
    
    
    
    

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var subTitleLabelLabel: AKLabel!
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    
    override func viewWillAppear(_ animated: Bool) {
    

    }
    @IBAction func showOnboarding(_ sender: Any) {
        showOnboaridingAlert()

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showOnboaridingAlert()
        
        
        /// Code allows you to tap anywhere on the screen to dismiss the decimal keyboard.
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:)))
        tap.cancelsTouchesInView = false
        self.view.addGestureRecognizer(tap)

        nameTextField.delegate = self
        
        
        alertView = AlertOnboarding(arrayOfImage: arrayOfImage, arrayOfTitle: arrayOfTitle, arrayOfDescription: arrayOfDescription)
        
        alertView.delegate = self
        
        //animate the button
        showAnimateButton()
        print("Onbaording opening of the first time")

    }
    

   
    
    func showOnboaridingAlert() {
        
        print("Onboarding custom alert activated")
        //Simply call AlertOnboarding...
        let alertView = AlertOnboarding(arrayOfImage: arrayOfImage, arrayOfTitle: arrayOfTitle, arrayOfDescription: arrayOfDescription)
        
        
        //Modify background color of AlertOnboarding
        alertView.colorForAlertViewBackground = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            //UIColor(red: 173/255, green: 206/255, blue: 183/255, alpha: 1.0)
        
        //Modify colors of AlertOnboarding's button
        alertView.colorButtonText = UIColor.white
        alertView.colorButtonBottomBackground = #colorLiteral(red: 0.8156862745, green: 0.2549019608, blue: 0.2549019608, alpha: 1)
        
        //Modify colors of labels
        alertView.colorTitleLabel = #colorLiteral(red: 0.1215686275, green: 0.1294117647, blue: 0.1411764706, alpha: 1)
        alertView.colorDescriptionLabel = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        //Modify colors of page indicator dots
        alertView.colorPageIndicator = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        alertView.colorCurrentPageIndicator = #colorLiteral(red: 0.8156862745, green: 0.2549019608, blue: 0.2549019608, alpha: 1)
        
        //Modify size of alertview (Purcentage of screen height and width) // Can be 0.5 as well.
        alertView.percentageRatioHeight = 0.7
        alertView.percentageRatioWidth = 0.9
        
        //Modify labels
        alertView.titleSkipButton = "Skip"
        alertView.titleGotItButton = "Got it!"
        
        
        alertView.show()
    }
    
    
    //MARK: - Animation
    /**
     Animates the transitions
     - Transitions:
     - UIView Animate with duration: Time it takes to animate
     - Transoform : Current Bicarb Value
     
     Change the duration to adjust the time you want the animation to happen. Also, replace the view or label to your choice.
     */
    func showAnimateButton()
    {
        // Animation for the Results UIView
        self.newButton.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.newButton.alpha = 0.0;
        UIView.animate(withDuration: 2.0, animations: {
            self.newButton.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
            self.newButton.alpha = 1.0
            self.newButton.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        })
        
      
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        
    }

    
    /// Keyboard Dismissed after you touch the screen
    func doneButtonAction() {
        self.view.endEditing(true)
    }
    
    func hideKeyboard()  {
        nameTextField.resignFirstResponder()
    }

    func textFieldDidBeginEditing(_ textField: UITextField) {
        animateViewMoving(up: true, moveValue: 100)
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        animateViewMoving(up: false, moveValue: 100)
    }
    func animateViewMoving (up:Bool, moveValue :CGFloat){
        
        let movementDuration:TimeInterval = 0.3
        
        let movement:CGFloat = ( up ? -moveValue : moveValue)
        
        UIView.beginAnimations( "animateView", context: nil)
        
        UIView.setAnimationBeginsFromCurrentState(true)
        
        UIView.setAnimationDuration(movementDuration )
        
        self.view.frame = self.view.frame.offsetBy(dx: 0, dy: movement)
        
        UIView.commitAnimations()
    }
    
    /**
     Animate Label
     
     - Remark: Animates a UILabel using the AKLabel file.
     - SeeAlso: https://github.com/akshaysyaduvanshi/AKLabel
     - Requires: AKLabel.swift file to function. Need to also change the outlet to the AKLabel subclass.
     - Warning: If the subclass is not changed, or the IBOutlet doesnt reflect the AKLabel as well as importing the label, it will crash.
     **/
   
    override func viewDidAppear(_ animated: Bool) {
    
        let subtititleText = "Let's personalize your experience. Enter your name to get started ! "
        subTitleLabelLabel.animate(text: subtititleText, duration: 2, completion: nil)
     
        //animates the welcome label
        showAnimate()
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
        self.welcomeLabel.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.welcomeLabel.alpha = 0.0;
        
        UIView.animate(withDuration: 0.5, animations: {
            self.welcomeLabel.alpha = 1.0
            self.welcomeLabel.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        })
       
        
    }

// Function for the button lets go.
    @IBAction func letsGoButtonTouched(_ sender: Any) {
        
        //Can add a guard statement is nothing is in the textbox to go to the main screen.
        guard let theText = nameTextField.text, theText.isEmpty else {
            // If the textField is filled in then do the following actions.
            self.performSegue(withIdentifier: "mainViewSegue", sender: self)
            
            // SEt the name to the userDefaults
            UserDefaults.standard.set(nameTextField.text, forKey: "name")
            
            // Print the name entered
            print("The name \(UserDefaults.standard.set(nameTextField.text, forKey: "name")) was enetered")

            return // or throw
        }
        
        
        
        //
        
        // If the textField is empty then do the following actions.
        nameTextField.text = ""
        
        _ = SCLAlertView().showError("Hold On...", subTitle:"Please enter your name so we can help personalize your experience. We promise that we don't save your info.", closeButtonTitle:"OK")
     
        
        print("The name \(UserDefaults.standard.set(nameTextField.text, forKey: "name")) was enetered")
    }
    
    @IBAction func skipButtonPressed(_ sender: Any) {
       
      //username = nil
        if (nameTextField.text?.isEmpty)! {
            
            // Set the name to be blank
            nameTextField.text = ""
            
            // Tranisition
            performSegue(withIdentifier: "mainViewSegue", sender: self)
            // Set the user default to blank
            UserDefaults.standard.set(nameTextField.text, forKey: "name")
            
            print("Name was left blank in the name field")

        }
      
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destinationViewController.
//        // Pass the selected object to the new view controller.
//
//        if segue.identifier == "mainViewSegue" {
//            // We segue to ACLSVC and pass the infomation from which row is pressed
//            if let mainMenuController = segue.destination as? MainMenu_Collection {
//
//                // This is where we reference the object on the rec VC and set it to what we need to.
//                mainMenuController.usernameReceived = (nameTextField.text!)
//                print("user was selected")
//            }
//    }
   

    //--------------------------------------------------------
    // MARK: DELEGATE METHODS --------------------------------
    //--------------------------------------------------------
    func alertOnboardingSkipped(_ currentStep: Int, maxStep: Int) {
        print("Onboarding skipped the \(currentStep) step and the max step he saw was the number \(maxStep)")
    }
    
    func alertOnboardingCompleted() {
        print("Onboarding completed!")
    }
    
    func alertOnboardingNext(_ nextStep: Int) {
        print("Next step triggered! \(nextStep)")
    }
    

}// End of the class
