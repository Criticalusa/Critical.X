//
//  OBDetailView.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 1/28/19.
//  Copyright © 2019 Jadie Barringer III. All rights reserved.
//

import UIKit


class OBDetailView: UIViewController {

    // Global varibales to be send info from the main
    // Titile of disorder
    var titleName = String()
    
    //describing the rhythm
    var descriptionString = String()
    
    // the name if the image passed
    var imageString = String ()

    // Decscribes the image
    var imageDescription = String()
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var fetalHeartImage: UIImageView!
    @IBOutlet weak var imageSmallDescription: UILabel!
    
    
    override func viewDidLoad() {
        
        // Set the label to the passed string
        titleLabel.text = titleName
        
        // SEts the description label to the string which is connect oto an emum
        descriptionLabel.text = descriptionString
        
        imageSmallDescription.text = imageDescription
        
        // Populate the image with the string passed.
        fetalHeartImage.image = UIImage(named: imageString)
    }
    
 
    
    @IBAction func dismissOB(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        print("OBDetail View Controller was dismissed")
        
    }
}
