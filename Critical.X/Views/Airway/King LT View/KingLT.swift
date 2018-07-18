//
//  KingLT.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 7/17/18.
//  Copyright © 2018 Jadie Barringer III. All rights reserved.
//

import UIKit
import EasyPeasy

class KingLT: UIViewController {

    
    //var kingLTLabel = UILabel()
    var kingLTSubtitle = UILabel()
    @IBOutlet weak var KingScrollView: UIScrollView!
    @IBOutlet weak var kingLTView: UIView!
    var UIViewHeader: UIView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabels()
        //addSubViews()
        displayKingLTImage()
        
        KingScrollView.recalculateVerticalContentSize_synchronous()
        //calls the extension to display the labels
        
        
        //create the last UIImage under the View
        
        let placeholderImage : UIImageView = {
            let placeholderImage = UIImageView(image: UIImage(named: "KingAnatomy"))
            placeholderImage.contentMode = .scaleAspectFit
            
            /// Rounds the corners 15 pixels of the UIView name. 4 px for a button
            placeholderImage.clipsToBounds = true
            placeholderImage.layer.cornerRadius = 5
            
            return placeholderImage
        }()
        
        //Adds the image to the view
        KingScrollView.addSubview(placeholderImage)
        
        /* Now we have to position the label to where we want it after its added to the subview
         Centers the label in the middle of the UView, set the top margin, height and width */
        placeholderImage.easy.layout(
            Width(200), // Sets the width of the label
            Height(200), //Sets the height of the label
            CenterX(0.0), // Centers the label in the center of the view
            Top(10).to(kingLTView)) // Sets the value from the top of the view.
        
       
        /** Create the UILabel */
        
        let lastLabelKingLT : UILabel = {
            let label = UILabel()
            //label.frame = CGRect(x: 24, y: 140, width: 310, height: 40)
            label.bottom(10)
            label.text = "Proper placement of the King LT Airway after inssertion."
            label.lineBreakMode = .byWordWrapping
            label.textColor = Colorify.Clouds
            label.textAlignment = .center
            label.numberOfLines = 0
            label.font = Font.subheader.withSize(16.0)
            return label
        }()
        
        //Adds the label to the subview
        KingScrollView.addSubview(lastLabelKingLT)
        
        //Now we have to position the label to where we want it after its added to the subview
        //Centers the label in the middle of the UView, set the top margin, height and width
        lastLabelKingLT.easy.layout(
            Width(310.0), // Sets the width of the label
            Height(40.0), //Sets the height of the label
            CenterX(0.0), // Centers the label in the center of the view
            Top(200.0).to(kingLTView)) // Sets the value from the top of the selectedView.
        
        
    }
    
 

}
