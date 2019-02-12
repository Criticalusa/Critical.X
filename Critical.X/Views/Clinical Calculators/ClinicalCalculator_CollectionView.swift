//
//  ClinicalCalculator_CollectionView.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 2/5/19.
//  Copyright © 2019 Jadie Barringer III. All rights reserved.
//

import UIKit
import AKLabel


class ClinicalCalculator_CollectionView: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    // Main Title
    var medCalcTitle = [String]()
    // Subtitles
    var medCalcSubtitle = [String]()
    
    var StoryboardID = [String]()
    // Explanation of the modes
    
    @IBOutlet weak var clinicalCalculatorSubTitile: AKLabel!
    
    // MARK: UICollectionViewDataSource
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return medCalcTitle.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        //Delcare the place where we are getting the cell info
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! ClinicalCalc_CollectionCell
        
        // Configure the cell from the oulets in the cell Class.
        cell.titleLabel.text = medCalcTitle[indexPath.item]
        cell.subTitle.text = medCalcSubtitle [indexPath.item]
        
//        // We are changing the color of the Detail Subtitle only here.
        switch indexPath.row {
        case 0:
            cell.subTitle.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        case 1, 5, 11, 15:
            cell.subTitle.textColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        case 2:
            cell.subTitle.textColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        case 3:
            cell.subTitle.textColor = #colorLiteral(red: 0.6269999743, green: 0.9330000281, blue: 0.753000021, alpha: 1)
        case 4:
            cell.subTitle.textColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
       
        case 6, 7, 13:
            cell.subTitle.textColor = #colorLiteral(red: 0.6269999743, green: 0.9330000281, blue: 0.753000021, alpha: 1)

        case 10:
            cell.subTitle.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        
        case 12:
            cell.subTitle.textColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
       
        case 14:
            cell.subTitle.textColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
       
        case 16:
            cell.subTitle.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        case 17:
            cell.subTitle.textColor = #colorLiteral(red: 0.9843137255, green: 1, blue: 0.7098039216, alpha: 1)
        default:
            cell.subTitle.textColor = #colorLiteral(red: 0.920953393, green: 0.447560966, blue: 0.4741248488, alpha: 1)
        }
        return cell
    }

    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
         print(StoryboardID [indexPath.item])
        // Set the Storyboard ID to each indexPath.
        let SBID = StoryboardID [indexPath.item]
        
      // We only push Index 17 and for the rest we use MODAL transition
        switch indexPath.item {
        case 17:
            let storyboard = UIStoryboard(name: "ReferencesMenu", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "R")
            
            // Push the ViewController via Navigation
            self.navigationController?.pushViewController(vc, animated: true)
       
           
        
        // Display the rest as Modal Tranisition.
        default:
            // Name has to reflect the origionting SB.
            let storyboard = UIStoryboard(name: "ReferencesMenu", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: SBID)
            
            // Push the ViewController via Navigation
            //self.navigationController?.pushViewController(vc, animated: true)
            
            // If you want to pop up then call the self.presentViewController function.
            self.present(vc, animated: true, completion: nil)

        }// End the swi
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        clinicalCalculatorSubTitile.animate(text: "Clinical Calculators and References", duration: 1, completion: nil)
        
        
        medCalcTitle = ["P:F Ratio", //0 - A
                        "Anion Gap Calculator",//1 - B
                        "ABG Calculator",//2 - C
                        "Bicarbonate Deficit",//3 - D
                        "Parkland Formula",//4 - E
                        "Ideal Body Weight",//5 - F
                        "Oxygen Cylinder Calculator", //6 - G
                        "Ventilator Optimization",//7 - H
                        "Mean Arterial Pressure & Cerebral Perfusion Pressure",//8 - I // Need to creat VC
                        "Urine Output",//9 - J
                        "IV Rate Calculator",//10 - K
                        "Check My drip",//11 - L
                        "FENa",//12 - M
                        "Free Water Deficit",//13 - N
                        "tPA Dose Calculator",//14 - O Need to creat VC
                        "Winters Formula",//15 - P
                        "Medical Spanish",//16 - Q
                        "Pregnancy Calculator",] //17 - R
        
        medCalcSubtitle = ["Pa02/Fi02 Ratio",//0
                           "Calculates the Anion Gap",//1
                           "Arterial Blood Gas Calculator",//2
                           "Calculates the deficit of bicarbonate",//3
                           "Fluid replacement calculator post burns",//4
                           "Devine formula",//5
                           "Calculate flow times remaining",//6
                           "Optimize Ventilator Settings",//7
                           "MAP and CPP Calculator",//8
                           "Calculates U/O in mL/kg/hr",//9
                           "Calculates the IV flow rate",//10
                           "Pre-Renal",//11
                            "Calculates the fractional excretion of Na",//12
                           "Free Water Deficit Calc",//13
                           "Initial bolus and drip ",//14
                           "Expected C02 Compensation",//15
                           "Medical Spanish and Audio",//16
                           "Calculate expected due date"]//17
        
        StoryboardID = ["A","B","C","D","E","F","G","H","CS","J","K","L","M","N","CS","P", "Q", ""]
        
        
    }
    
    
    
    


}