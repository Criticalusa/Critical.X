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
        
        
        // Set the Storyboard ID to each indexPath.
        let SBID = StoryboardID [indexPath.item]
        
        print(StoryboardID [indexPath.item] + " - Storyboard ID")
        
        // We only push these and for the rest we use MODAL transition
        switch indexPath.item {
       
        case 15:  // Pregnancy Calculator
            
            // Name has to reflect the origionting SB.
            let storyboard = UIStoryboard(name: "ReferencesMenu", bundle: nil)
            
            // The storyboard ID of the viewControlle we want to transition to
            let vc = storyboard.instantiateViewController(withIdentifier: "preggo")
            
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
        clinicalCalculatorSubTitile.animate(text: "CLINICAL REFERENCES & CALCULATORS", duration: 1, completion: nil)
        
        // Set the navigatin title
        self.navigationItem.title = "Clinical"
        
        
        
        medCalcTitle = [
            
            "ABG Calculator", // 0
            
            "Anion Gap Calculator",  //1
            
            "Bicarbonate Deficit",   //2
            
            "Check My drip",         //3
            
            "CRRT Dosing Calculator", //4
            
            
            
            
            "FENa",                  //4
            
            "Free Water Deficit",    //5
            
            "Tidal Volume Calculator",  //6
            
            "IV Rate Calculator",   //7
            
            "LOX Calculator",        //8
            
            
            
            
            "Medical Spanish",       //9
            
            "MAP | CPP",             //10
            
            "02 Cylinder Calculator",//11
            
            "Parkland Formula",      //12
            
            "P:F Ratio",             //13
            
            
            
            
            "Pregnancy Calculator",  //14
            
            "Shock Index",           //15
            
            "tPA Dose Calculator",  //16
            
            "Urine Output",          //17
            
            "Ventilator Optimization",// 18
            
            "Winters Formula"       //19
            ]
        
        
        
        
        medCalcSubtitle = [
            
            "INTERPRET ARTERIAL BLOOD GASES", //0
            
            "CALCULATES THE ANION GAP",//1
            
            "CALCULATES THE DEFICIT OF BICARBONATE",//2
            
            "CONFIRM IV FLOW RATES",//3
            
            "CALCULATE DESIRED DOSE OF DIALYSATE IN CRRT", //4
            
            
            
            "CALCULATES THE FRACTIONAL EXCRETION OF NA",//5
            
            "FREE WATER DEFICIT CALC",// 6
            
            "CALCULATES BASED ON IDEAL BODY WEIGHT",// 7
            
            "CALCULATES IV FLOW RATE",   //8
            
            "LOX CALCULATOR",        //9
            
            
            
            "MEDICAL SPANISH & AUDIO",       // 10
            
            "MEAN ARTERIAL PRESSURE & CEREBRAL PERFUSION PRESSURE",// 11
            
            "CALCULATES THE FLOW TIME REMAINING",//10
            
            "FLUID REPLACEMENT CALCULATOR POST BURNS",//11
            
            "PA02/FI02 RATIO",//12
            
            
            
            "CALCULATES THE EXPECTED DUE DATE",//13
            
            "SHOCK INDEX",           //14
            
            "INITIAL BOLUS AND DRIP ",//15
            
            "CALCULATES THE U/O IN ML/KG/HR",//16
            
            "OPTIMIZE VENTILATOR SETTINGS",
            
            "EXPECTED C02 COMPENSATION" //17

            
            
        ]
        
        
        
        StoryboardID = [
            
            "ABG", //0
            
            "B",//1
            
            "D",//2
            
            "checkDrip",//3
            
            "CRRT", //4
            
            "fena",//4
            
            "freeWater", // 5
            
            "ibw",//6
            
            "ivRateCalc",//7
            
            "LOX",      //8
            
            "spanish",// 9
            
            "MAP",//10
            
            "o2cylinder",//11
            
            "parkland",//12
            
            "pfRatio",//13
            
            "preggo",//14
            
            "SI",//15
            
            "tpa",//16
            
            "peepee",//17
            
            "VentOp", //18
            
            "winterTime",//19
            
            
            
        ]
    }
    
    
    // Once the view appears, the animation starts.
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        //change the color of the navigation Bar
        self.navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.8167747855, green: 0.2564189732, blue: 0.2553805709, alpha: 1)
        
        
    }
    
    // Change the color back when the view dissappears
    override func viewWillDisappear(_ animated: Bool) {
        //change the color of the navigation Bar
        self.navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.04688691348, green: 0.1025837436, blue: 0.1407855749, alpha: 1)
        
        
    }
    
}
