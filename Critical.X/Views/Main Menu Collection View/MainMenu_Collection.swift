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
        
        mainMenu = ["About Critical",
                    "Airway Management",
                    "Hemodynamics",
                    "ACLS & EKGs",
                    "Clinical Pharmacology",
                    "Infusions",
                    "Fluids blood products",
                    "Lab values",
                    "Balloon pump",
                    "Neuro",
                    "Pediatrics",
                    "Obstetrics",
                    "Clinical Calculators",
                    "Rapid Sequence Intubation",
                    "Procedures & Imaging",
                    "Ventilator Management"]
       
        mainMenuDetail = ["Rate Us, Email, Disclaimer Information",
                    "Intubation, Difficult Airway",
                    "Invasive Monitorine, CVP",
                    "EKG Interpretation & ACLS",
                    "Clinical Medications",
                    "Common Critical Care Drips",
                    "PRBC, 0.9%, ALbumin",
                    "CMP, Chemistries, LFT's",
                    "IABP Timing Modes and Complications",
                    "Neuro Assessments & Stroke",
                    "Pediatric Calculations",
                    "Fetal Heart Monitoring",
                    "Medical Calculators & Medical Spanish",
                    "Emergency Medications and Dosages",
                    "CXR, CT and Central Lines",
                    "ABG Calculator, TV, Ventilator Modes"]
        
        cellImages = ["CRITICAL1.ekg",
                      "Lungs",
                      "Hemodynamics",
                      "Heart",
                      "Pharmacology",
                      "IV Bag",
                      "CBC",
                      "GrayTop",
                      "Critical--IABP-6",
                      "Brain 44",
                      "PedsX",
                      "OB",
                      "formula",
                      "LaryngscopeGreen",
                      "Procedures",
                      "Critical-Ventilator-Green-Management-13"]
        
        
        storyBoardID = [
            "About Critical",
            "Airway management",
            "Hemodynamics",
            "EKG",
            "Clinical pharmacology",
            "Infusions",
            "Fluids blood products",
            "Lab values",
            "Balloon pump",
            "Neuro",
            "Pediatrics",
            "Obstetrics",
            "Clinical Calculators",
            "Rapid sequence intubation",
            "Procedures & imaging",
            "Ventilator management"]
        
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
        let SBID = storyBoardID [indexPath.item]
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: SBID)
        self.navigationController?.pushViewController(vc, animated: true)
            //self.present(vc, animated: true, completion: nil)
            print(storyBoardID [indexPath.item])
        
        if SBID == "RSIMain" {
            self.present(vc, animated: true, completion: nil)

        }
        
        
    
        


}

}



