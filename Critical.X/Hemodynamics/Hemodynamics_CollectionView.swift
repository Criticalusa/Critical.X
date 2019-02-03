//
//  Hemodynamics_CollectionView.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 2/2/19.
//  Copyright © 2019 Jadie Barringer III. All rights reserved.
//

import UIKit
import AKLabel

class Hemodynamics_CollectionView:  UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var hemodynamicsTitleLabel: AKLabel!
    
    // Main Title
    var hemodynamicTitles = [String]()
    // Subtitles
    var hemodynamicValues = [String]()
    // Explanation of the modes
    var ventExplanationDetail = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        // Animate the ultrasound title.
        hemodynamicsTitleLabel.animate(text: "Hemodynamics", duration: 1, completion: nil)
        
        
        hemodynamicTitles =  ["Arterial Oxygen Saturation (SaO2)",
                              "Mixed Venous Saturation (SvO2)",
                              "Central Venous Oxygen Saturation (ScvO2)",
                              "Central Venous Pressure (CVP)",
                              "Right Ventricular Pressure (RVP)",
                              "Pulmonary Artery Pressure (PAP)",
                              "Pulmonary Artery Wedge Pressure (PAOP)",
                              "Mean Pulmonary Artery Pressure (MPAP)",
                              "Left Atrial Pressure (LAP)",
                              "Cardiac Output (CO)",
                              "Cardiac Index (CI)",
                              "Stroke Volume (SV)",
                              "Stroke Volume Index (SVI)",
                              "Stroke Volume Variation (SVV)",
                              "Systemic Vascular Resistance (SVR)",
                              "Systemic Vascular Resistance Index (SVRI)",
                              "Pulmonary Vascular Resistance (PVR)"]
        
        hemodynamicValues = ["95 - 100%",
                             "60 - 80%",
                             "70%",
                             "2-6 mmHg",
                             "Systolic: 15-30 mmHg, Diastolic: 2-8 mmHg",
                             "Systolic: 15-30 mmHg, Diastolic: 8-15 mmHg",
                             "8-12 mmHg",
                             "9-18 mmHg",
                             "4-12 mmHg",
                             "CO = HR * SV/1000: 4.0-8.0 L/min",
                             "2.5-4.0 L/min/m2",
                             "CO/HR x 1000: 60-100 mL's/beat",
                             "CI/HR x 1000: 33-47 mL/m2/beat",
                             "10-15%",
                             "800-1200 dynes-sec/cm –5" ,
                             "1970-2390 dynes-sec/cm –5/m",
                             "<250 dynes-sec/cm–5"]
        
        
    }
    
    
    
    @IBAction func dismissHemodynamics(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        print("Hemodynamics Controller was dismissed")
        
    }
}



extension Hemodynamics_CollectionView {
    
    
    // MARK: UICollectionViewDataSource
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return hemodynamicTitles.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        //Delcare the place where we are getting the cell info
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! Hemodynamics_Cell
        
        // Configure the cell from the oulets in the cell Class.
        cell.hemoTitle.text = hemodynamicTitles[indexPath.item]
        cell.hemoSubTitle.text = hemodynamicValues [indexPath.item]
      
        return cell
    }
    
    // Pass the data from the cells and data to the detailView Controller.
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        // print(OBstoryBoardID [indexPath.item])
        // Set the Storyboard ID to each indexPath.
        //let SBID = OBstoryBoardID [indexPath.item]
        
        
        
        let storyboard = UIStoryboard(name: "Hemodynamics", bundle: nil) // Has to reflect the storyBoard they are on.
        if let vc = storyboard.instantiateViewController(withIdentifier: "A") as? Hemodynamics_DetailView {
            
            // Set these first to the strings to pass
          
            vc.titleString_hemodynamics = hemodynamicTitles [indexPath.item]
            vc.subTitle_hemodynamics = hemodynamicValues [indexPath.item]
            
            
            switch indexPath.item {
                
            // AC
            case 0:
                assignVentID = 1
                vc.descriptionString_hemodynamics = "An SaO2 (arterial oxygen saturation, as determined by an arterial blood gas test) value below 60% causes hypoxemia (which can also be caused by anemia). Peripheral oxygen saturation (SpO2) is an estimation of the oxygen saturation level usually measured with a pulse oximeter device."
                print("Assigned id to send is \(assignVentID)")
                
            // APRV
            case 1:
                assignVentID = 2
                vc.descriptionString_hemodynamics = VentilatorModes.APRV.rawValue
                print("Assigned id to send is \(assignVentID)")
                
            // BiLevel
            case 2:
                assignVentID = 3
                vc.descriptionString_hemodynamics = VentilatorModes.Bipap.rawValue
                print("Assigned id to send is \(assignVentID)")
                
            //CPAP
            case 3:
                assignVentID = 4
                vc.descriptionString_hemodynamics = VentilatorModes.CPAP.rawValue
                print("Assigned id to send is \(assignVentID)")
                
            //IMV
            case 4:
                
                assignVentID = 5
                vc.descriptionString_hemodynamics = VentilatorModes.IMV.rawValue
                print("Assigned id to send is \(assignVentID)")
                
            //IRV
            case 5:
                assignVentID = 6
                vc.descriptionString_hemodynamics = VentilatorModes.IRV.rawValue
                print("Assigned id to send is \(assignVentID)")
                
                
            //PCV
            case 6:
                assignVentID = 7
                vc.descriptionString_hemodynamics = VentilatorModes.PCV.rawValue
                print("Assigned id to send is \(assignVentID)")
                
                //PRVC
                
            case 7:
                assignVentID = 8
                vc.descriptionString_hemodynamics = VentilatorModes.PRVC.rawValue
                print("Assigned id to send is \(assignVentID)")
                
                //PSV
                
            case 8:
                assignVentID = 9
                vc.descriptionString_hemodynamics = VentilatorModes.PSV.rawValue
                print("Assigned id to send is \(assignVentID)")
                
            //SIMV
            case 9:
                assignVentID = 10
                vc.descriptionString_hemodynamics = VentilatorModes.SIMV.rawValue
                print("Assigned id to send is \(assignVentID)")
            default:
                break
            }
            
            // If there were iages
            //            vc.imageDescription = smallDescriptionString [indexPath.item]
            //            vc.imageString = fetalImageNames[indexPath.item]
            //
            // Then present the view controller
            self.present(vc, animated: true, completion: nil)
            
            
        }
        
        print([indexPath.item])
        
        // Push the ViewController via Navigation
        //            self.navigationController?.pushViewController(vc, animated: true)
        
        
    }
    
}

