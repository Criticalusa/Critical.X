//
//  ViewController.swift
//  ACLS
//
//  Created by Jadie Barringer III on 12/21/17.
//  Copyright © 2017 Jadie Barringer III. All rights reserved.
//

import UIKit


class ACLSViewController: UIViewController {
    
    @IBOutlet weak var ekgImageView: UIImageView!
    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var title_Label: UILabel!
    @IBOutlet weak var aclsViewScreen: UIVisualEffectView!
    @IBOutlet weak var ekgSubtitle_Label: UILabel!
    @IBOutlet weak var ekgDescriptionLabel: UILabel!
    @IBOutlet weak var medication_Label: UILabel!
    @IBOutlet weak var header_Label: UILabel!
    @IBOutlet weak var acls2View: UIView!
    
    /// Constraint for the scroll height.
    @IBOutlet var scroll_height: NSLayoutConstraint!
    
    //MARK: Global Variables to and declare and use to beable to pass data.
    var ekgTitle = String ()
    var ekgDescription: String = ""
    var subTitle:String = ""
    var medsToConsider:String = ""
    var header:String = ""
    var rhythmName: String = ""
    var aclsView: UIVisualEffectView = UIVisualEffectView()
    

    override func viewDidLoad() {
        
        
        /// Rounds the corners 15 pixels of the UIView named: aclsView
        aclsViewScreen.clipsToBounds = true
        aclsViewScreen.layer.cornerRadius = 15
        
        // Attempts to resize the UIView to the label content
        aclsViewScreen.sizeToFit()
        acls2View.sizeToFit()
        
        // Takes the close button and makes it into a circle
        closeButton.layer.cornerRadius = closeButton.frame.size.width / 2
        
        //Hides the button becuase i have a Nav controller. 
        closeButton.isHidden = true
        // Helper funtion to be initiated below.
        
        updateEKGInfomation()
        
        
    }
    
    
    
    //MARK: Helper Function to execute the views
    func updateEKGInfomation() {
        
        /// Takes the title of the button and assigns it to the label.
        title_Label.text = ekgTitle
        ekgSubtitle_Label.text = subTitle
        ekgDescriptionLabel.text = ekgDescription
        medication_Label.text = medsToConsider
        header_Label.text = header
        aclsViewScreen = aclsView
        
        ekgDescriptionLabel.sizeToFit()
        medication_Label.sizeToFit()
        
       
        
        // Takes the name of the gif, delcared in the enum and passes it to the string rhythmName so that the function argument can take the string thats passed.
        ekgImageView.loadGif(name: rhythmName)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        /// Takes the scroll height outlet for the view, and adds it the the labels that are in the view. Pads it about  100 pixels at the end.
        scroll_height.constant = ekgDescriptionLabel.frame.origin.y + ekgDescriptionLabel.frame.size.height + medication_Label.frame.size.height + 100
    }
    
    
    @IBAction func dismissACLSView(_ sender: Any) {
        
        ///Method to dismiss the viewController
        dismiss(animated: true, completion: nil)    }
    
    
}

