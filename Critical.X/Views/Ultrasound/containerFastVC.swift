//
//  containerFastVC.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 1/13/19.
//  Copyright © 2019 Jadie Barringer III. All rights reserved.
//

import UIKit




class containerFastVC: UIViewController {
   
    var imgOneString = String ()
    var imgTwoString: String = ""
    var descriptionStringOne = String()
    var descriptionStringTwo = String()
    
    
    @IBOutlet weak var physiologyImage: UIImageView!
    @IBOutlet weak var pathoPhysImage: UIImageView!
    @IBOutlet weak var testLabel: UILabel!
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

       print("Container Loaded")
        physiologyImage.image = UIImage(named: imgOneString)
       // pathoPhysImage.image = UIImage(named: imgTwoString)
        pathoPhysImage.loadGif(name: imgTwoString)

        /// Rounds the corners 15 pixels of the UIView name. 4 px for a button
        physiologyImage.clipsToBounds = true
        physiologyImage.layer.cornerRadius = 4
        pathoPhysImage.clipsToBounds = true
        pathoPhysImage.layer.cornerRadius = 4
        
        testLabel.text = descriptionStringOne
        // Do any additional setup after loading the view.
    }
    
  



}
