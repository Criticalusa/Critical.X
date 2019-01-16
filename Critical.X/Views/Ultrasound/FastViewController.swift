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
    
    
    enum USImageNames: String {
        case HeartParasternal = "Heart_Parasternal"
        case subXyphoid = "Heart_subxyphoid"
        case subxy = "Subxyphoid"
        case RUQAnatomy = "RUQAnatomyFast"
        case SweepThroughRUQ = "SweepThroughRUQ"
    }
    
    enum Abnormal: String {
        case RUQ = """
        Concerning findings in the RUQ should be solid organ injuries and Hemoperitoneum.
        
        1). Hemoperitoneum: When there's a suspected hemoperitoneum, you will notice an anechoic (black) region usually in the morrisons pouch (between the liver and kidney. If there's free fluid (jet black) in morrisons pouch it should be seen around the lower edge and tip of the liver.
        
        2). Solid organ injuries: Look for lacerations to the liver and kidneys as well as ruptures.

        """
    }
    
    enum ViewDescription: String {
    
    case morrisonsText =  """
                The RUQ is the most sensitive region for free- fluid accumilation compared to the other regions. When viewing the Right Upper Quadrant the probe indicator should be pointing cephalad on the patients right mid-axillary side side.
                There are 3 visible areas of focus.
                \r1) Hepatorenal Interface - Morrisons Pouch
                \r2) Inferior pole of the right kidney
                \r3) The diaphragm
                
                \rFollow the lower edge of the liver down toward the posterior until you get a good view of the tip. If there's free fluid (jet black) in morrisons pouch it should be seen around the lower edge and tip of the liver.
                """
    
    case leftUpperQuadrant =
            """
            The LUQ aka the perisplenic view is used to visualize the presence of free-fluid around the spleen and in the chest around the costophrenic angle. The traditional views obtained in the LUQ are:
            \r1) Spenorenal Interface
            \r2) Inferior tip of the spleen
            \r3) The diaphragm
            \r4) Inferior Pole of the Left Kidney
            """
        
        
        
    }//End Enum
    
    
    
    
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
                morrisonsViewController.fast_description = ViewDescription.morrisonsText.rawValue
                morrisonsViewController.abnormalFindingsonScan = Abnormal.RUQ.rawValue
                // Image Views
                morrisonsViewController.ultraSoundName = USImageNames.SweepThroughRUQ.rawValue
                
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
                LUQ.ultraSoundName = USImageNames.HeartParasternal.rawValue
                
                print("LUQ Pouch was selected")
            }
        }

    }
    }


