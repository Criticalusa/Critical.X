//
//  Central_Line_ImageZoom.swift
//  
//
//  Created by Jadie Barringer III on 1/25/19.
//

import UIKit

class Central_Line_ImageZoom: UIViewController {

    @IBOutlet weak var zoomedImage: UIImageView!
   
    @IBOutlet weak var zoomImageTitle: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Switching on the global Variable string
        switch segueName {
        
        // First image
        case "main":
            zoomedImage.image = UIImage(named: "CentralLineAnatomy")
        zoomImageTitle.text = "Internal jugular Anatomy"
        
        // First GIF image
        case "IJ":
            zoomedImage.loadGif(name: "CentralLine-Anatomy") 
            zoomImageTitle.text = "Ultrasound R IJ"

        // SEcond GIF
        case "dopplerImage":
            zoomedImage.loadGif(name: "CentralLine_ColorDoppler")
            zoomImageTitle.text = "Ultrasound doppler R IJ"

        // 3rd Image
        case "threeImages":
            zoomedImage.image = UIImage(named: "IJ_PLacementAnatomy")
            zoomImageTitle.text = "Anatomical Landmarks"

        
        default:
            break
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func dismissImageZoom(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        print("ZoomedImage Controller was dismissed")
    }
    
   

}
