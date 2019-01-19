//
//  FastViewController.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 1/12/19.
//  Copyright © 2019 Jadie Barringer III. All rights reserved.
//

import UIKit
import AKLabel
class FastViewController: UIViewController {

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
        if segue.identifier == "Morrisons" {
            // We segue to MiniDrugVC and pass the infomation from which button is pressed
            if let morrisonsViewController = segue.destination as? FASTDetailVC {
                
                //Headings and Titles
                morrisonsViewController.fast_Title = "Morrisons Pouch"
                morrisonsViewController.fast_description = ViewDescription.RUQ_morrisonsTextDescription.rawValue
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
            // We segue to MiniDrugVC and pass the infomation from which button is pressed
            if let LUQ = segue.destination as? FASTDetailVC {
                
                //Headings and Titles
                LUQ.fast_Title = "Perisplenic View - LUQ"
                LUQ.fast_description = ViewDescription.leftUpperQuadrant.rawValue
                
                // Image Views
                LUQ.ultraSoundName = UltraSoundImages.HeartParasternal.rawValue
                
                print("LUQ Pouch was selected")
            }
        }

    }
    }


