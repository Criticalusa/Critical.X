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
        
        // We are changing the color of the Detail Subtitle only here.
        //        switch indexPath.row {
        //
        //        case 0,2,4,6,8,10,12,14,16,18:
        //
        //            cell.titleLabel.textColor = #colorLiteral(red: 0.9294117647, green: 0.8823529412, blue: 0.8196078431, alpha: 1)
        //
        //        default:
        //
        //            cell.subTitle.textColor = #colorLiteral(red: 0.920953393, green: 0.447560966, blue: 0.4741248488, alpha: 1)
        //        }
        
        return cell
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        print(StoryboardID [indexPath.item])
        
        // Set the Storyboard ID to each indexPath.
        let SBID = StoryboardID [indexPath.item]
        
        // We only push Index 17 and for the rest we use MODAL transition
        switch indexPath.item {
        case 13:
            
            // Name has to reflect the origionting SB.
            let storyboard = UIStoryboard(name: "ReferencesMenu", bundle: nil)
            
            let vc = storyboard.instantiateViewController(withIdentifier: "R")
            
            // Push the ViewController via Navigation
            self.navigationController?.pushViewController(vc, animated: true)
            
            
            
        // Display the rest as Modal Tranisition.
        default:
            
            // Name has to reflect the origionting SB.
            let storyboard = UIStoryboard(name: "ReferencesMenu", bundle: nil)
            
            // Set the segue to the storyboard ID
            let vc = storyboard.instantiateViewController(withIdentifier: SBID)
            
            // Push the ViewController via Navigation
            //self.navigationController?.pushViewController(vc, animated: true)
            
            // If you want to pop up then call the self.presentViewController function.
            self.present(vc, animated: true, completion: nil)
            
        }// End the switch
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        clinicalCalculatorSubTitile.animate(text: "Clinical Calculators and References", duration: 1, completion: nil)
        
        // Set the navigatin title
        self.navigationItem.title = "Clinical"
        
        
        
        medCalcTitle = [
            "Anion Gap Calculator",  //0
            
            "Bicarbonate Deficit",   //1
            
            "Check My drip",         //2
            
            "FENa",                  //3
            
            "Free Water Deficit",    //4
            
            "Ideal Body Weight",     //5
            
            "IV Rate Calculator",   //6
            
            "LOX Calculator",        //7
            
            "Medical Spanish",       //8
            
            "MAP | CPP",             //9
            
            "02 Cylinder Calculator",//10
            
            "Parkland Formula",      //11
            
            "P:F Ratio",             //12
            
            "Pregnancy Calculator",  //13
            
            "Shock Index",           //14
            
            "tPA Dose Calculator",  //15
            
            "Urine Output",          //16
          
            "Winters Formula",       //17
            
           
            
            
            
        ]
        
        medCalcSubtitle = [
            
            "Calculates the Anion Gap",//0
            
            "Calculates the deficit of bicarbonate",//1
            
            "Confirm IV flow rates",//2
            
            "Calculates the fractional excretion of Na",//3
           
            "Free Water Deficit Calc",//4
            
            "Devine formula",//5
            
            "IV Rate Calculator",   //6
            
            "LOX Calculator",        //7
            
            "Medical Spanish",       //8
            
            "Calculates the IV flow rate",//9
           
            "Calculates the time remaining with liquid qxygen",//10
            
            "Medical Spanish and Audio",//11
            
            "Mean Arterial Pressure & Cerebral Perfusion Pressure",//12
            
            "Calculates the flow times remaining",//13
            
            "Shock Index",           //14
            
            "tPA Dose Calculator",  //15
            
            "Fluid replacement calculator post burns",//16
            
            "Pa02/Fi02 Ratio",//17
            
            "Calculates the expected due date",//0
           
            "Calculates the shock index of a patient",//1
           
            "Initial bolus and drip ",//2
          
            "Calculates the U/O in mL/kg/hr",//3
           
            "Expected C02 Compensation",//4
            
           ]
        
        StoryboardID = [
            
            "B",//0
            
            "D",//1
            
            "L",//2
            
            "M",//3
            
            "N",
            
            "F",//4
            
            "K",//5
            
            "IV Rate Calculator",   //6
            
            "LOX Calculator",        //7
            
            "Medical Spanish",       //8
            
            "LOX",//9
            
            "Q",//10
            
            "MAP",//11
            
            "G",//12

            "E",//13
            
            "Shock Index",           //14
            
            "tPA Dose Calculator",  //15
            
            "A",//16
            
            "R",//17
            
            "SI",//0
            
            "tpa",//1
            
            "J",//2
            
            "P",//3
            
        ]
    }
    
    
    // Once the view appears, the animation starts.
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        //change the color of the navigationbar
        self.navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1803921569, green: 0.1803921569, blue: 0.1803921569, alpha: 1)
        
        
    }
    
    // Change the color back when the view dissappears
    override func viewWillDisappear(_ animated: Bool) {
        //change the color of the navigationbar
        self.navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.3759999871, green: 0.4900000095, blue: 0.5450000167, alpha: 1)
        
        
    }
    
}
