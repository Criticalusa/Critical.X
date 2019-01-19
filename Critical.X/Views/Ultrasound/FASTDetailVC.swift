//
//  FASTDetailVC.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 1/12/19.
//  Copyright © 2019 Jadie Barringer III. All rights reserved.
//

import UIKit


class FASTDetailVC: UIViewController {

    
    
    @IBOutlet weak var title_Label: UILabel!
    @IBOutlet weak var ultrasoundImageView: UIImageView!
    @IBOutlet weak var detail_Label: UILabel!
    @IBOutlet weak var abnormalFindings: UILabel!
    @IBOutlet weak var probeHertz: UILabel!
    @IBOutlet weak var initialUSImage: UIImageView!
    
    
    var fast_Title = String ()
    var initialImageString = String ()
    var probeTitle = String ()
    var fast_description = String()
    var ultraSoundName: String = ""
    var abnormalFindingsonScan: String = ""
   
        @IBAction func dismissmyView(_ sender: Any) {
            
            dismiss(animated: true, completion: nil)
            print("Fast detail View Controller was dismissed")
            
        }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

      updatePassedData()
       
    }
    
  
    
// Helper function for the passed data
    func updatePassedData() {
       
        // Set the outlets to the passed strings.
        
        title_Label.text = fast_Title
        initialUSImage.loadGif(name: ultraSoundName)
        abnormalFindings.text = abnormalFindingsonScan
        ultrasoundImageView.image = UIImage(named: initialImageString)
        probeHertz.text = probeTitle
        detail_Label.text = fast_description
        
        
    }

//    // Will load the gif once the view appears.
//    override func viewDidAppear(_ animated: Bool) {
//        ultrasoundImageView.loadGif(name: ultraSoundName)
////        physiologyImage.image = UIImage(named: physImage)!
////        pathoPhysImage.image = UIImage(named: pathoImage)!
//
//    }
    
    // IMAGES THAT WILL BE PASSED THROUGHT TO THE CONTAINER VIEW
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        
        
        
        //MARK: - PASS DATA GOES TO CONTAINER VIEW
        if let container = segue.destination as? containerFastVC, segue.identifier == "TestContainer" {
            // Fist pitcure
            container.imgOneString = UltraSoundImages.RUQAnatomy.rawValue
            container.descriptionStringOne = "Anatomy"
            
            // Second Picture
            container.imgTwoString = UltraSoundImages.HeartParasternal.rawValue
        }
        
    
}
}
