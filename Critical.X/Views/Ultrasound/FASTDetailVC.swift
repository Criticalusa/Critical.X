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


    
    // IMAGES THAT WILL BE PASSED THROUGHT TO THE CONTAINER VIEW
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
    
        //MARK: - PASS DATA  TO CONTAINER VIEWS Images and Labels, The conditionals are containerview, segue.identifier and SETID. We only change this.
        
        //RUQ View
        if let container = segue.destination as? containerFastVC, segue.identifier == "TestContainer", setID == 0 {
            
            print("Set id is \(setID)")
            // Fist pitcure Reguar Image
            container.imgOneString = UltraSoundImages.RUQAnatomy.rawValue
            container.descriptionStringOne = "RUQ Anatomy"
            
            // Second Picture GIF
            container.imgTwoString = "Pathology-RUQ"
            container.descriptionStringTwo = "Free fluid Morison's Pouch"
            
            // Second Picture Image
            container.imgThreeString = UltraSoundImages.PathologyRUQ_Image.rawValue
            container.descriptionStringThree = "Free fluid Morison's Pouch"
            
            // Third Image
            container.imgFourString = "Pathology_RUQ_ParaglottcFreeFluid"
            container.descriptionStringFour = "Free fluid paracolic gutter"
        }
        
        //MARK: - WE ONLY CHANGE THE SET IT - LUQ View
        if let container = segue.destination as? containerFastVC, segue.identifier == "TestContainer", setID == 1 {
            
            print("Set id is \(setID)")
            // Fist pitcure Reguar Image
            container.imgOneString = UltraSoundImages.LUQProbeAnatomy.rawValue
            container.descriptionStringOne = "LUQ Anatomy"
            
            // Second Picture GIF Pathology
            container.imgTwoString = UltraSoundImages.Pathology_LUQ_PosFast1.rawValue
            container.descriptionStringTwo = "LUQ Hemoperitoneum"
            
            // Second Picture Image Pathology with color
            container.imgThreeString = UltraSoundImages.Pathology_LUQ_Img.rawValue
            container.descriptionStringThree = "Perisplenic free fluid"
            
            // Third Image Pathology GIF
            container.imgFourString = UltraSoundImages.Pathology_LUQ_PosFAST2.rawValue
            container.descriptionStringFour = "Free fluid paracolic gutter"
        } // End segue
        
        //MARK: - Cardiac View
        if let container = segue.destination as? containerFastVC, segue.identifier == "TestContainer", setID == 2 {
            
            print("Set id is \(setID)")
            // Fist pitcure Reguar Image
            container.imgOneString = UltraSoundImages.SubxyphoidImg.rawValue
            container.descriptionStringOne = "Cardiac Anatomy"
            
            // Second Picture GIF Pathology
            container.imgTwoString = UltraSoundImages.PericardialEffusion_GIF.rawValue
            container.descriptionStringTwo = "Large Pericardial Effusion"
            
            // Second Picture Image Pathology with color
            container.imgThreeString = UltraSoundImages.SubXiphoidEffusionImage.rawValue
            container.descriptionStringThree = "Effusion with RV collapse"
            
            // Third Image Pathology GIF
            container.imgFourString = UltraSoundImages.PLAX_EffusionGIF.rawValue
            container.descriptionStringFour = "PLAX Pericardial Effusion"
        } // End segue
        
        //MARK: - Thoracic container viewa
        if let container = segue.destination as? containerFastVC, segue.identifier == "TestContainer", setID == 3 {
            
            print("Set id is \(setID)")
            // Fist pitcure Reguar Image
            container.imgOneString = UltraSoundImages.ThoracicAnatomy.rawValue
            container.descriptionStringOne = "Thoracic Anatomy"
            
            // Second Picture GIF Pathology
            container.imgTwoString = UltraSoundImages.NormalLungVPTX.rawValue
            container.descriptionStringTwo = "Normal vs. PTX Lung"
            
            // Second Picture Image Pathology with color
            container.imgThreeString = UltraSoundImages.MMode.rawValue
            container.descriptionStringThree = "Seashore sign, M-Mode"
            
            // Third Image Pathology GIF
            container.imgFourString = UltraSoundImages.LungPointSignGif.rawValue
            container.descriptionStringFour = "Lung Point Sign"
        } // End segue
        
        //MARK: - Pelvic container viewa
        if let container = segue.destination as? containerFastVC, segue.identifier == "TestContainer", setID == 4 {
            
            print("Set id is \(setID)")
            // Fist pitcure Reguar Image
            container.imgOneString = UltraSoundImages.ThoracicAnatomy.rawValue
            container.descriptionStringOne = "Thoracic Anatomy"
            
            // Second Picture GIF Pathology
            container.imgTwoString = UltraSoundImages.NormalLungVPTX.rawValue
            container.descriptionStringTwo = "Normal vs. PTX Lung"
            
            // Second Picture Image Pathology with color
            container.imgThreeString = UltraSoundImages.MMode.rawValue
            container.descriptionStringThree = "Seashore sign, M-Mode"
            
            // Third Image Pathology GIF
            container.imgFourString = UltraSoundImages.LungPointSignGif.rawValue
            container.descriptionStringFour = "Lung Point Sign"
        } // End segue
        
        
        //MARK: - Sends main Image to the FAST Image Pop View Controller no setID
        if let sendMain = segue.destination as? FAST_ImagePop, segue.identifier == "MainImg" {
            // We set the ID as 15 so we can reference it in the FAST Imge pop VC
            print("Set id is \(setID)")
            // Fist pitcure Reguar Image
            setID = 15
            sendMain.imgOneString_pop = ultraSoundName
            sendMain.imgTitle = fast_Title
            
            print("The USName is \(ultraSoundName) which was triggered")
            
        } // End segue

    }


} //end of the class
