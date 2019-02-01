//
//  VentMode_detailVC.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 1/29/19.
//  Copyright © 2019 Jadie Barringer III. All rights reserved.
//

import UIKit


class VentMode_detailVC: UIViewController {

    var ventID = Int()
    
    //GLobal variables
    
    var ventTitleString = String()
    var subTitle = String()
    var ventDescriptionString = String()

    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var ventDetailScrollView: UIScrollView!
   
    
    
    override func viewDidLoad() {
    
        super.viewDidLoad()

        titleLabel.text = ventTitleString
        subTitleLabel.text = subTitle
        //descriptionLabel.text = ventDescriptionString
        
        
        switch assignVentID {
        case 1:
            changeString_AssistControl()
            print("The assigned id received is \(assignVentID)")
        case 2:
            changeString_APRV()
            print("The assigned id received is \(assignVentID)")
        case 3:
            changeString_Bilevel()
            print("The assigned id received is \(assignVentID)")
        case 4:
            changeString_CPAP()
            print("The assigned id received is \(assignVentID)")
        case 5:
            changeString_IMV()
            print("The assigned id received is \(assignVentID)")
        case 6:
            changeString_AssistControl()
            print("The assigned id received is \(assignVentID)")
        case 7:
            changeString_AssistControl()
            print("The assigned id received is \(assignVentID)")
        case 8:
            changeString_AssistControl()
            print("The assigned id received is \(assignVentID)")
        case 9:
            changeString_AssistControl()
            print("The assigned id received is \(assignVentID)")
        case 10:
            changeString_AssistControl()
            print("The assigned id received is \(assignVentID)")

        default:
            break
        }
   
    }
    
    
    @IBAction func dismissVentDetail(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        print("View Controller was dismissed")
        
    }
   
    
    
    override func viewDidAppear(_ animated: Bool) {
        setScrollViewContentSize()
    }
    
    
    func setScrollViewContentSize() {
        
        var height: CGFloat
        let lastView = self.ventDetailScrollView.subviews[0].subviews.last!
        
        print(lastView.debugDescription) // should be what you expect
        
        let lastViewYPos = descriptionLabel.convert(lastView.frame.origin, to: nil).y  // this is absolute positioning, not relative
        
        // Add all the labels here.
        let lastViewHeight = descriptionLabel.frame.size.height
        
        // sanity check on these
        print(" Last Y position is \(lastViewYPos)")
        print(" Height of the last view is \(lastViewHeight)")
        
        
        height = lastViewYPos + lastViewHeight
        
        print("setting scroll height: \(height)")
        
        ventDetailScrollView.contentSize.height = height
    }



}// End of class



    

