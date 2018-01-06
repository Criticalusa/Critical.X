//
//  RateCriticalPopUp.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 12/4/17.
//  Copyright © 2017 Jadie Barringer III. All rights reserved.
//

import UIKit
import MessageUI


class RateCriticalPopUp: UIViewController {

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
    
    @IBAction func dismissPopUpVC(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    @IBAction func sendEmailFeedback(_ sender: Any) {
        
        let mailComposeViewController = configuredMailComposeViewController()
        if MFMailComposeViewController.canSendMail() {
            self.present(mailComposeViewController, animated: true, completion: nil)
        } else {
            self.showSendMailErrorAlert()
        }
    }
    
    func configuredMailComposeViewController() -> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self as? MFMailComposeViewControllerDelegate // Extremely important to set the --mailComposeDelegate-- property, NOT the --delegate-- property
        
        mailComposerVC.setToRecipients(["Criticalusa@gmail.com.com"])
        mailComposerVC.setSubject("Critical -X Feedback for IOS")
        mailComposerVC.setMessageBody("Hi, Great app.I would love to offer some constructive feedback to improve the functionality.", isHTML: false)
        
        return mailComposerVC
    }
    
    func showSendMailErrorAlert() {
        
        let sendMailErrorAlert = UIAlertController(title:"Could Not Send Email", message: "Your device could not send e-mail.  Please check e-mail configuration and try again.", preferredStyle: UIAlertControllerStyle.alert)
        sendMailErrorAlert.addAction(UIAlertAction(title: "Got it", style: UIAlertActionStyle.default, handler: nil))
        self.present(sendMailErrorAlert,animated: true, completion: nil)
        
    
       
    }
    
    // MARK: MFMailComposeViewControllerDelegate Method
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
