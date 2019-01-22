//
//  FastViewController.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 1/12/19.
//  Copyright © 2019 Jadie Barringer III. All rights reserved.
//

import UIKit
import AKLabel


var setID = Int()


class FAST_MAIN_VC: UIViewController {

    @IBOutlet weak var subTitleAnimate: AKLabel!
    @IBOutlet weak var closeButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //here we animate the subtitle when it appears. 
        let subtitle = "Focused Assessment with Sonography for Trauma"
        subTitleAnimate.animate(text:subtitle, duration: 1, completion: nil)
        // Do any additional setup after loading the view.
        
        // Takes the button and makes it into a circle
        closeButton.layer.cornerRadius = closeButton.frame.size.width / 2
    }
    
    @IBAction func dismissFASTview(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
   
    
    //MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        ///RUQ
        // We are using 2 conditionals , SET ID and segue identifier. So one segue, multiple views.
        if segue.identifier == "Morrisons" {
            
         
            if let morrisonsViewController = segue.destination as? FASTDetailVC {
                
                // We use this ID to set and number, then reference the number to see if its set so we can reference it in the containerViewController
                setID = 0
                print("SetID was registered at \(setID) ACTIVATE RUQ")
                
                //Headings and Titles
                morrisonsViewController.fast_Title = "Morrisons Pouch"
               
                morrisonsViewController.fast_description = UltraSound_AcousticViewDescription.RUQ_morrisonsTextDescription.rawValue
               
                morrisonsViewController.abnormalFindingsonScan = AbnormalFindings.RUQ.rawValue
               
                morrisonsViewController.probeTitle = "3.5 Htz"
                
                // Image Views
                // Ultrasound probe position
                morrisonsViewController.ultraSoundName = UltraSoundImages.SweepThroughRUQ.rawValue
                
                // First image
                morrisonsViewController.initialImageString = UltraSoundImages.RUQProbePosition.rawValue
                
                
                print("Morrisons Pouch was selected")
            }
        }
        
        
        // Left Upper Quadrant
        if segue.identifier == "LUQ" {
            
            // We use this ID to set and number, then reference the number to see if its set so we can reference it in the containerViewController
            setID = 1
            print("SetID was registered at \(setID). ACTIVATE LUQ")
            
            
            if let LUQ = segue.destination as? FASTDetailVC {
                
                //Headings and Titles
                LUQ.fast_Title = "Perisplenic View - LUQ"
                                
                //Headings and Titles
                LUQ.fast_description = UltraSound_AcousticViewDescription.leftUpperQuadrant.rawValue
                
               
                LUQ.probeTitle = "3.5 Htz"
                
                // Image Views
                // First image
                LUQ.initialImageString = UltraSoundImages.LUQProbe.rawValue
                
                // Ultrasound probe position
                LUQ.ultraSoundName = UltraSoundImages.LUQ_SweepThrough.rawValue
                
                // Abnormal Findings
                LUQ.abnormalFindingsonScan = AbnormalFindings.LUQ.rawValue
                
                print("LUQ View was selected")
            }
        }
        
        
        // Cardiac Views
        if segue.identifier == "Cardiac" {
            
            // We use this ID to set and number, then reference the number to see if its set so we can reference it in the containerViewController
            setID = 2
            print("SetID was registered at \(setID). ACTIVATE Cardiac")
            
            
            if let Cardiac = segue.destination as? FASTDetailVC {
                
                //Headings and Titles
                Cardiac.fast_Title = "Cardiac Views"
                
                //Headings and Titles
                Cardiac.fast_description = UltraSound_AcousticViewDescription.CardaicView.rawValue
                
                
                Cardiac.probeTitle = "Cardiac Probe"
                
                // Image Views
                // First image
                Cardiac.initialImageString = UltraSoundImages.CardiacProbe.rawValue
                
                // Ultrasound probe position
                Cardiac.ultraSoundName = UltraSoundImages.subXyphoidGif.rawValue
                
                // Abnormal Findings
                Cardiac.abnormalFindingsonScan = AbnormalFindings.Cardiac.rawValue
                
                print("Cardiac was selected")
            }
        }
        
        // Thoracic Views
        if segue.identifier == "Thoracic" {
            
            // We use this ID to set and number, then reference the number to see if its set so we can reference it in the containerViewController
            setID = 3
            print("SetID was registered at \(setID). ACTIVATE Thoracic")
            
            
            if let thoracic = segue.destination as? FASTDetailVC {
                
                //Headings and Titles
                thoracic.fast_Title = "Anterior Thoracic Views"
                
                //Headings and Titles
                thoracic.fast_description = UltraSound_AcousticViewDescription.Thoracic.rawValue
                
                
                thoracic.probeTitle = "Linear "
                
                // Image Views
                // First image
                thoracic.initialImageString = UltraSoundImages.ThoracicProbe.rawValue
                
                // Ultrasound first GIF
                thoracic.ultraSoundName = UltraSoundImages.ABLinesThoracic
                    .rawValue
                
                // Abnormal Findings
                thoracic.abnormalFindingsonScan = AbnormalFindings.Thoracic.rawValue
                
                print("Thoracic view was selected")
            }
        }
        
        // Pelvic Views
        if segue.identifier == "Thoracic" {
            
            // We use this ID to set and number, then reference the number to see if its set so we can reference it in the containerViewController
            setID = 4
            print("SetID was registered at \(setID). ACTIVATE Thoracic")
            
            
            if let thoracic = segue.destination as? FASTDetailVC {
                
                //Headings and Titles
                thoracic.fast_Title = "Anterior Thoracic Views"
                
                //Headings and Titles
                thoracic.fast_description = UltraSound_AcousticViewDescription.Thoracic.rawValue
                
                
                thoracic.probeTitle = "Linear "
                
                // Image Views
                // First image
                thoracic.initialImageString = UltraSoundImages.ThoracicProbe.rawValue
                
                // Ultrasound first GIF
                thoracic.ultraSoundName = UltraSoundImages.ABLinesThoracic
                    .rawValue
                
                // Abnormal Findings
                thoracic.abnormalFindingsonScan = AbnormalFindings.Thoracic.rawValue
                
                print("Thoracic view was selected")
            }
        }
        
        

    } // End Segue
    }// End Class


