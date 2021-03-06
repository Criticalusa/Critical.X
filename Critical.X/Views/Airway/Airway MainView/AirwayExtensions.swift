//
//  AirwayExtensions.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 7/17/18.
//  Copyright © 2018 Jadie Barringer III. All rights reserved.
//

import Foundation
import UIKit
import EasyPeasy

extension AirwayMenu {
    
    
    
    func setupLabel() {
        //Create the SubLabel
        
        //Create the labels
        
        /** Create the UILabel */
        let superGlotticSubLabel: UILabel = {
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
        airWayView1.addSubview(superGlotticSubLabel)
        
        //Now we have to position the label to where we want it after its added to the subview
        //Centers the label in the middle of the UView, set the top margin, height and width
        superGlotticSubLabel.easy.layout(
            Width(310.0), // Sets the width of the label
            Height(40.0), //Sets the height of the label
            CenterX(0.0), // Centers the label in the center of the view
            Top(140.0).to(airWayView1)) // Sets the value from the top of the selectedView.
        
        
        
        //MARK: INTUBATION SUBLABEL
        
        /** Create the UILabel */
        let theLabel: UILabel = {
            let label = UILabel()
            label.frame = CGRect(x: 24, y: 51, width: 310, height: 40)
            label.bottom(10)
            label.text = "One pass laryngoscopy"
            label.lineBreakMode = .byWordWrapping
            label.textColor = Colorify.Sunflower
            label.textAlignment = .center
            label.numberOfLines = 1
            label.font = UIFont(name: "HelveticaNeue", size: 12.0)
            
            return label
        }()
        //Adds the label to the subView
        airWayView1.addSubview(theLabel)
        
        //Centers the label in the middle of the UView, set the top margin, height and width
        theLabel.easy.layout(
            Width(310.0),
            Height(40.0),
            CenterX(0.0),
            Top(50.0).to(airWayView1))
        
        
        //MARK: Create the LMA SubLabel
        /** Create the UILabel */
        let lmaLabel: UILabel = {
            let label = UILabel()
            //label.frame = CGRect(x: 17, y: 50, width: 310, height: 40)
            label.bottom(10)
            label.text = "LMA"
            label.lineBreakMode = .byWordWrapping
            label.textColor = Colorify.Sunflower
            label.textAlignment = .center
            label.numberOfLines = 1
            label.font = UIFont(name: "HelveticaNeue", size: 12.0)
            
            return label
        }()
        airWayView2.addSubview(lmaLabel)
        
        //Centers the label in the middle of the UView, set the top margin, height and width
        lmaLabel.easy.layout(
            Width(310.0),
            Height(40.0),
            CenterX(0.0),
            Top(50.0).to(airWayView2))
        
        //MARK: Create the SubLabel
        /** Create the UILabel */
       
        let lemonMoansLabel: UILabel = {
            let label = UILabel()
            //Uncomment if not using Easy Peasy or Stevia
            //label.frame = CGRect(x: 17, y: 132, width: 310, height: 40)
            label.bottom(10)
            label.text = "Lemon, Moans, Rods, Short"
            label.lineBreakMode = .byWordWrapping
            label.textColor = Colorify.Sunflower
            label.textAlignment = .center
            label.numberOfLines = 1
            label.font = UIFont(name: "HelveticaNeue", size: 12.0)
            
            return label
        }()
        airWayView2.addSubview(lemonMoansLabel)
        
        //Centers the label in the middle of the UView, set the top margin, height and width
        lemonMoansLabel.easy.layout(
            Width(310.0),
            Height(40.0),
            CenterX(0.0),
            Top(134.0).to(airWayView2))
        
    }
    
} // End of extension




// CREATE THE BUTTONS AND SUBTITLES
extension AirwayMenu {
    
    
    //MARK: INTUBATION BUTTON
    func createIntubationButton() {
        let intubationBtn = UIButton ()
        // intubationBtn.frame = CGRect(x: 24, y: 13, width: 310, height: 40)
        intubationBtn.backgroundColor = #colorLiteral(red: 0.2040559649, green: 0.7372421622, blue: 0.6007294059, alpha: 0.5149833937)
        intubationBtn.setTitle("INTUBATION", for: UIControl.State.normal)
        intubationBtn.titleLabel!.font = Font.regular.withSize(15)
        intubationBtn.setTitleColor(UIColor.white, for: .normal)
        
        // Creates the selector that used to create the IBAction function.
        intubationBtn.addTarget(self, action: #selector(self.buttonActionClicked), for: .touchUpInside)
        intubationBtn.tag = 1 // Creates the tagnumber
        intubationBtn.layer.cornerRadius = 4 // Rounds the corner of the button
        
        
        //adds the button to the subView
       airWayView1.addSubview(intubationBtn)
        //Centers the button in the middle of the UView, set the top margin, height and width
    
        
        intubationBtn.easy.layout(
            Width(310.0),
            Height(40.0),
            CenterX(0.0),
            Top(13.0).to(airWayView1),
            Left(10).to(airWayView1),
            Right(10).to(airWayView1))

    }
}

extension AirwayMenu {
    
    func createKingLTButton() {
        let kingLTBtn = UIButton ()
        // kingLTBtn.frame = CGRect(x: 18, y: 98, width: 310, height: 40)
        kingLTBtn.backgroundColor = #colorLiteral(red: 0.2040559649, green: 0.7372421622, blue: 0.6007294059, alpha: 0.5149833937)
        kingLTBtn.setTitle("KING LT AIRWAY", for: UIControl.State.normal)
        kingLTBtn.titleLabel!.font = UIFont(name: "HelveticaNeue", size: 15.0)!
        kingLTBtn.setTitleColor(UIColor.white, for: .normal)
        
        // Creates the selector that used to create the IBAction function.
        kingLTBtn.addTarget(self, action: #selector(self.buttonActionClicked), for: .touchUpInside)
        kingLTBtn.tag = 2 // Creates the tagnumber
        kingLTBtn.layer.cornerRadius = 4 // Rounds the corner of the button
        
        // Adds the label to the subview
        airWayView1.addSubview(kingLTBtn)
        
        //Centers the button in the middle of the UView, set the top margin, height and width
        kingLTBtn.easy.layout(
            Width(310.0),
            Height(40.0),
            CenterX(0.0),
            Top(98.0).to(airWayView1),
            Left(10).to(airWayView1),
            Right(10).to(airWayView1))
        
        
    }
    
}


extension AirwayMenu {
    
    func createLMAButton() {
        let LMABtn = UIButton ()
        //LMABtn.frame = CGRect(x: 17, y: 18, width: 310, height: 40)
        LMABtn.backgroundColor = #colorLiteral(red: 0.2040559649, green: 0.7372421622, blue: 0.6007294059, alpha: 0.5149833937)
        LMABtn.setTitle("LARYNGEAL MASK AIRWAY", for: UIControl.State.normal)
        LMABtn.titleLabel!.font = UIFont(name: "HelveticaNeue", size: 15.0)!
        LMABtn.setTitleColor(UIColor.white, for: .normal)
        
        // Creates the selector that used to create the IBAction function.
        LMABtn.addTarget(self, action: #selector(self.buttonActionClicked), for: .touchUpInside)
        LMABtn.tag = 3 // Creates the tagnumber
        LMABtn.layer.cornerRadius = 4 // Rounds the corner of the button
        //LMABtn.top(50).left(15).size(50)
        
        //adds the button to the subView
        airWayView2.addSubview(LMABtn)
        
        //Centers the button in the middle of the UView, set the top margin, height and width
        LMABtn.easy.layout(
            Width(310.0),
            Height(40.0),
            CenterX(0.0),
            Top(18.0).to(airWayView2),
            Left(10).to(airWayView2),
            Right(10).to(airWayView2))
        
    }
    
}



extension AirwayMenu {
    
    //MARK: Predictor button
    func createPredictorsButton() {
        let predictorButton = UIButton ()
        //predictorButton.frame = CGRect(x: 17, y: 100, width: 310, height: 40)
        predictorButton.backgroundColor = #colorLiteral(red: 0.2040559649, green: 0.7372421622, blue: 0.6007294059, alpha: 0.5149833937)
        predictorButton.setTitle("PREDICTORS OF A DIFFICULT AIRWAY", for: UIControl.State.normal)
        predictorButton.titleLabel!.font = UIFont(name: "HelveticaNeue", size: 15.0)!
        predictorButton.setTitleColor(UIColor.white, for: .normal)
        
        // Creates the selector that used to create the IBAction function.
        predictorButton.addTarget(self, action: #selector(self.buttonActionClicked), for: .touchUpInside)
        predictorButton.tag = 4 // Creates the tagnumber
        predictorButton.layer.cornerRadius = 4 // Rounds the corner of the button
        predictorButton.top(50).left(15).size(50)
        
        //adds the button to the subView
        airWayView2.addSubview(predictorButton)
        
        //Centers the button in the middle of the UView, set the top margin, height and width
        predictorButton.easy.layout(
            Width(310.0),
            Height(40.0),
            CenterX(0.0),
            Top(100.0).to(airWayView2),
            Left(10).to(airWayView2),
            Right(10).to(airWayView2))
        
    }
}


