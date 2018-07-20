//
//  LMA.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 7/19/18.
//  Copyright © 2018 Jadie Barringer III. All rights reserved.
//

import UIKit
import EasyPeasy



class LMA: UIViewController {

    @IBOutlet weak var LMAScrollView: UIScrollView!
    
    // This view is on top of the scrollView where the content is placed.
    @IBOutlet weak var contentView: UIView!
    var lastImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //LMAScrollView.recalculateVerticalContentSize_synchronous()
       // Helper functions to call from the extensions. 
        setUpLabels()
        //contentView.sizeToFit()
        //LMAScrollView.sizeToFit()
        LMAScrollView.recalculateVerticalContentSize_synchronous()

    }

}// End of the LMA Class


    


