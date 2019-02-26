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




class RateCriticalPopUp: UIViewController, MFMailComposeViewControllerDelegate {
    
    
    
    
    @IBOutlet weak var popUpView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        
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
    

}
