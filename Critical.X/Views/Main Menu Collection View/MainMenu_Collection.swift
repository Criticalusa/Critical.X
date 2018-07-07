//
//  MainMenuTableViewController.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 7/5/18.
//  Copyright © 2018 Jadie Barringer III. All rights reserved.
//

import UIKit

class MainMenu_Collection: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    
    
    
    @IBOutlet var menuCollectionView: UICollectionView!
    
    var mainMenu = [String]()
    var mainMenuDetail = [String]()
    var cellImages = [String]()
    var storyBoardID = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainMenu = ["About Critical", // 0
            "Airway Management", // 1
            "Hemodynamics",// 2
            "ACLS & EKGs",// 3
            "Clinical Pharmacology", // 4
            "Infusions", // 5
            "Fluids blood products", // 6
            "Lab values", // 7
            "Balloon pump", // 8
            "Neuro", // 9
            "Pediatrics", // 10
            "Obstetrics", // 11
            "Clinical Calculators", // 12
            "Rapid Sequence Intubation", //13
            "Procedures & Imaging", // 14
            "Ventilator Management"] // 16
        
        mainMenuDetail = ["Rate Us, Email, Disclaimer Information",// 0
            "Intubation, Difficult Airway Algorithms",// 1
            "Invasive Monitoring, Central Venus Pressures, A-Lines",// 2
            "EKG Interpretations & Current ACLS Recommendations",// 3
            "Clinical Medications",// 4
            "Common Critical Care Drips",// 5
            "PRBC, 0.9%, ALbumin",// 6
            "Common Lab Panel Interpretations & Explanations",// 7
            "IABP Timing, Modes & Troubleshooting",// 8
            "Neurological Assessments & Stroke Scales",// 9
            "Peds Resuscitation, Calculations & Equipment",// 10
            "Fetal Heart Monitoring Strips",//  1
            "Medical Calculators & Medical Spanish",// 12
            "Common Emergency Meds & Dosages",// 13
            "CXR, CT & Central Line Insertion",// 14
            "ABG Calculator, 02 Tank Calc, TV, Modes"]// 15
        
        // Images and associated Indexpaths
        cellImages = ["CRITICAL1.ekg",// 0
            "Lungs",// 1
            "Hemodynamics",// 2
            "Heart",// 3
            "Pharmacology",// 4
            "IV Bag",// 5
            "CBC",// 6
            "GrayTop",// 7
            "Critical--IABP-6",// 8
            "Brain 44",// 9
            "PedsX",// 10
            "OB",//  11
            "formula",// 12
            "LaryngscopeGreen",// 13
            "Procedures",// 14
            "Critical-Ventilator-Green-Management-13"]// 15
        
        // StoryBoard ID and associated Indexpaths
        storyBoardID = ["About Critical", // 0
            "Airway management", // 1
            "Hemodynamics", // 2
            "EKG", // 3
            "Clinical pharmacology", // 4
            "Infusions",// 5
            "Fluids blood products",// 6
            "Lab values", // 7
            "Balloon pump",// 8
            "Neuro", // 9
            "Pediatrics", // 10
            "Obstetrics",//  11
            "Clinical Calculators", // 12
            "Rapid sequence intubation", // 13
            "Procedures & imaging", // 14
            "Ventilator management"] // 15
        
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mainMenu.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MenMenuCollectionViewCell
        cell.mainMenu_CellLabel.text = mainMenu[indexPath.item]
        cell.mainMenuDetail_CellLabel.text = mainMenuDetail [indexPath.item]
        cell.mainMenu_CellImage.image = UIImage (named:cellImages[indexPath.item])
        return cell
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        print(storyBoardID [indexPath.item])
        
        //There are multiple types of storyboards in this case, navigation/modal presentations. So we have to use conditionals to set the index path for the specific view controllers that we want to be modal, and then for the "else", everything else will be set to be pushed via navigation.
        
        // Conditionals to push these two index paths for modal view.
        
        // ABOUT PAGE --> MODAL
        if indexPath.row == 0 {
            let storyboard = UIStoryboard(name: "Main", bundle: nil) // Name has to reflect the origionting SB
            let aboutVC = storyboard.instantiateViewController(withIdentifier: "About Critical") // Making sure the identifier matches the SBID
            self.present(aboutVC, animated: true, completion: nil)
            
        }
            // PEDIATRICS PAGE --> MODAL
        else if indexPath.row == 10 {
            let storyboard = UIStoryboard(name: "Main", bundle: nil) // Name has to reflect the origionting SB
            let rsiVC = storyboard.instantiateViewController(withIdentifier: "Pediatrics") // Making sure the identifier matches the SBID
            self.present(rsiVC, animated: true, completion: nil)
            
        }
            // RSI PAGE --> MODAL
        else if indexPath.row == 13 {
            let storyboard = UIStoryboard(name: "Main", bundle: nil) // Name has to reflect the origionting SB
            let rsiVC = storyboard.instantiateViewController(withIdentifier: "Rapid sequence intubation") // Making sure the identifier matches the SBID
            self.present(rsiVC, animated: true, completion: nil)
            
        }
            //  Everything else will be pushed via navigation here.
        else {
            // Set the Storyboard ID to each indexPath.
            let SBID = storyBoardID [indexPath.item]
            
            // Name has to reflect the origionting SB.
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: SBID)
            
            // Push the ViewController via Navigation
            self.navigationController?.pushViewController(vc, animated: true)
            
        }
    }
    
}



