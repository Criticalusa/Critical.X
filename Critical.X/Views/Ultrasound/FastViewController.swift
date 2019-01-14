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
    }
    
    let morrisonsText =  """
                When viewing the Right Upper Quadrant the probe indicator should be pointing cephalad on the patients right mid-axillary side side.
                There are 3 visible areas of focus.
                \r1) Hepatorenal Interface - Morrisons Pouch
                \r2) Inferior pole of the right kidney
                \r3) The diaphragm
                
                \rFollow the lower edge of the liver down toward the posterior until you get a good view of the tip. If there's free fluid (jet black) in morrisons pouch it should be seen around the lower edge and tip of the liver.
                """
  
    //MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        ///SVT
        if segue.identifier == "Morrisons" {
            // We segue to MiniDrugVC and pass the infomation from which button is pressed
            if let morrisonsViewController = segue.destination as? FASTDetailVC {
                
                //Headings and Titles
                morrisonsViewController.fast_Title = "Morrisons Pouch"
                morrisonsViewController.fast_description = morrisonsText
               
                morrisonsViewController.ultraSoundName = USImageNames.subXyphoid.rawValue
                
                print("Morrisons Pouch was selected")
            }
        }
        

       
        // to containgerview
        if let container = segue.destination as? containerFastVC, segue.identifier == "Morrisons" {
            container.physStillImage = "Subxyphoid"
            container.pathoImage = "yo"
        }
        }
        
    }


