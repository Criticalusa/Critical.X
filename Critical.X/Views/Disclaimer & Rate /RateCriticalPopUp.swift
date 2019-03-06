//
//  RateCriticalPopUp.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 12/4/17.
//  Copyright © 2017 Jadie Barringer III. All rights reserved.
//

import UIKit
import MessageUI
import StoreKit
import AlertOnboarding




class RateCriticalPopUp: UIViewController, MFMailComposeViewControllerDelegate, AlertOnboardingDelegate {
    
    @IBOutlet weak var whatsNew: UIButton!
    
   
    
    @IBOutlet weak var popUpView: UIView!
    
    
    //MARK: - Onboarding Information
    
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
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        alertView = AlertOnboarding(arrayOfImage: arrayOfImage, arrayOfTitle: arrayOfTitle, arrayOfDescription: arrayOfDescription)
        
        alertView.delegate = self
        
        
        /// Rounds the corners 15 pixels of the UIView named: popUpView
//        popUpView.clipsToBounds = true
//        popUpView.layer.cornerRadius = 15
      

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func rateCritical (_ sender: Any) {
        
        /// Rating pops up to rate the app.
        if #available( iOS 10.3,*){
            SKStoreReviewController.requestReview()
        }
    }
    
    
    
    @IBAction func dismissPopUpVC(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
       
    }
    @IBAction func sendEmailFeedback(_ sender: Any) {
        
        sendEmail()

    }
    
    func sendEmail() {
        if MFMailComposeViewController.canSendMail() {
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self as? MFMailComposeViewControllerDelegate
            mail.setToRecipients(["criticalusa@gmail.com"])
            mail.setSubject("Critical -X Feedback for IOS")
            mail.setMessageBody("<p>Hi, Great app. I would love to offer some constructive feedback to improve the functionality.</p>", isHTML: true)
            
           
            present(mail, animated: true)
        } else {
            // show failure alert
        }
      
        }
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        self.dismiss(animated: true, completion: nil)
        
        // After the email view closes out we get a Thank you alert view.
        SCLAlertView().showTitle("Thank you!",
                                 subTitle: "Your message was sent to the Critical Team!",
                                 timeout: nil,
                                 completeText: "Done",
                                 style: .success,
                                 colorStyle: 0xD93829,//Critical Red
                                 colorTextButton: 0xFFFFFF, // White color
                                 circleIconImage: UIImage.init(named: "CRITICAL1.ekg"),
                                 animationStyle: .topToBottom)
        
    }
    
    //MARK: - Critical Dream Team Button
    @IBAction func criticalDreamTeamButtonClicked(_ sender: Any) {
        
        // Bitly link for dream-critical.com, Opens the webView outside the app no VC
        if let url = URL(string: "https://bit.ly/2EB2M9b") {
            UIApplication.shared.open(url, options: [:])
        }
    }
    
    
    
    //MARK: - Click Whats new
    @IBAction func clickedWhatsNew(_ sender: Any) {
        showOnboaridingAlert()

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
    
    
    //--------------------------------------------------------
    // MARK: DELEGATE METHODS FOR ALERT--------------------------------
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
    
    

}
