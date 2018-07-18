//
//  KingLT_Extension.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 7/17/18.
//  Copyright © 2018 Jadie Barringer III. All rights reserved.
//

import Foundation
import EasyPeasy

extension KingLT {
    
  
    
    func displayKingLTImage()  {
       
        let placeholderImage : UIImageView = {
            let placeholderImage = UIImageView(image: UIImage(named: "KingLT_labels"))
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
            Width(340), // Sets the width of the label
            Height(200), //Sets the height of the label
            CenterX(0.0), // Centers the label in the center of the view
            Top(90).to(KingScrollView)) // Sets the value from the top of the view.
        
    }
//
//        /** Create the view Text will be inside this view. */
//        let subView1 : UIView = {
//            let view = View()
//            view.backgroundColor = #colorLiteral(red: 0.1215686275, green: 0.1294117647, blue: 0.1411764706, alpha: 1)
//            return view
//        }()
//
//        //Adds the view to the subview
//        KingScrollView.addSubview(subView1)
//
//        subView1.layer.cornerRadius = 4
//
//
//
//        /** Create the UILabel */
//
//        let description1forKingLT : UILabel = {
//            let label = UILabel()
//            //label.frame = CGRect(x: 24, y: 140, width: 310, height: 40)
//
//            //label.bottom(10)
//            label.text = "The King LT is a supraglottic airway device indicated for anyone over 4 feet tall. It's contraindicated in patients with known esophageal diseases, positive gag reflexes and those with caustic ingestion.\n\nTHE KING AIRWAY DOES NOT PROTECT AGAINST ASPIRATION.\n\nThe King Airway comes in different sizes: Adults: 2.0, 2.5.\nPediatrics: 3, 4, and 5. Each size has a corresponding color.\n\nSize 3 (Yellow)\nRecommended for patients that are approximately 4-5 feet. Estimated cuff volume is 45-60 mL's of air. Cuff pressures should be approximately 60 cmH20.\n\nSize 4 (Red)\nRecommended for patients that are approximately 5-6 feet. Estimated cuff volume is 60-80 mL's of air. Cuff pressures should be approximately 60 cmH20.\n\nSize 5 (Purple)\nRecommended for patients that are over 6 feet. Estimated cuff volume is 70-90 mL's of air. Cuff pressures should be approximately 60 cmH20."
//            label.lineBreakMode = .byWordWrapping
//            label.textColor = Colorify.Clouds
//            label.textAlignment = .left
//            label.numberOfLines = 0
//            label.font = Font.regular.withSize(15)
//
//            return label
//        }()
//
//        //Adds the label to the subview
//        subView1 .addSubview(description1forKingLT)
//
//        //Now we have to position the label to where we want it after its added to the subview
//        //Centers the label in the middle of the UView, set the top margin, height and width
//         description1forKingLT .easy.layout(
//            Width(300), // Sets the width of the label
//            //Height(200), //Sets the height of the label
//            CenterX(0.0), // Centers the label in the center of the view
//            Top(10.0).to(subView1)) // Sets the value from the top of the selectedView.
//
//        //Now we have to position the view to where we want it after its added to the subview
//        //Centers the label in the middle of the UView, set the top margin, height and width
//        subView1.easy.layout(
//            Width(350), // Sets the width of the label
//            Height(description1forKingLT.frame.height + 100), //Sets the height of the label
//            CenterX(0.0), // Centers the label in the center of the view
//            Top(10).to(placeholderImage),
//            Bottom(10).to(description1forKingLT)) // Sets the value from the top of the selectedView.
//
//        subView1.sizeToFit()
//        description1forKingLT.sizeToFit()
//
//    }
}



// Add the labels
extension KingLT {
    
    
    func setupLabels()  {
        
        /** Create the UILabel */
        let kingTitle : UILabel = {
            let label = UILabel()
            //label.frame = CGRect(x: 24, y: 140, width: 310, height: 40)
            label.bottom(10)
            label.text = "KING LT AIRWAY"
            label.lineBreakMode = .byWordWrapping
            label.textColor = Colorify.Clouds
            label.textAlignment = .center
            label.numberOfLines = 1
            label.font = Font.regular.withSize(30.0) // takes the header struct and changes the size
            
            return label
        }()
        
        //Adds the label to the subview
        KingScrollView.addSubview(kingTitle)
        
        //Now we have to position the label to where we want it after its added to the subview
        //Centers the label in the middle of the UView, set the top margin, height and width
        kingTitle.easy.layout(
            Width(310.0), // Sets the width of the label
            Height(40.0), //Sets the height of the label
            CenterX(0.0), // Centers the label in the center of the view
            Top(15).to(KingScrollView)) // Sets the value from the top of the view.
        
        /** Create the UILabel */
        
        let kingSubTitle : UILabel = {
            let label = UILabel()
            //label.frame = CGRect(x: 24, y: 140, width: 310, height: 40)
            label.bottom(10)
            label.text = "Superglottic Airway Device"
            label.lineBreakMode = .byWordWrapping
            label.textColor = Colorify.Sunflower
            label.textAlignment = .center
            label.numberOfLines = 1
            label.font = UIFont(name: "HelveticaNeue", size: 12.0)
            
            return label
        }()
        
        //Adds the label to the subview
        KingScrollView.addSubview(kingSubTitle)
        
        //Now we have to position the label to where we want it after its added to the subview
        //Centers the label in the middle of the UView, set the top margin, height and width
        kingSubTitle.easy.layout(
            Width(310.0), // Sets the width of the label
            Height(40.0), //Sets the height of the label
            CenterX(0.0), // Centers the label in the center of the view
            Top(40.0).to(KingScrollView)) // Sets the value from the top of the selectedView.
        
    } //end of func
    
    
    
    
} // End of extension
