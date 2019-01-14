//
//  UltraSoundCollectionView.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 1/12/19.
//  Copyright © 2019 Jadie Barringer III. All rights reserved.
//

import UIKit
import AKLabel

private let reuseIdentifier = "Cell"

class UltraSoundCollectionView: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var USTitleLabel: AKLabel!
    
    // Variable declaration.
    var ultrasoundMainMenu = [String]()
    var ultrasoundMenuDetail = [String]()
    var storyBoardID = [String]()

    
    @IBAction func dismissUSVC(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Animate the ultrasound title.
        USTitleLabel.animate(text: "Ultrasound", duration: 1, completion: nil)
      
       
        ultrasoundMainMenu = ["FAST Examination", "RUSH Protocol", "Respiratory Distress Protocol"] // 2
        ultrasoundMenuDetail = ["Focused Assessment with Sonography in Trauma", "Rapid Ultrasound for Shock & Hypotension", "Diagnose cardiopulmonary emergencies"] // 2
        storyBoardID = ["Fast","Rush","Resp"]
        
    }



    // MARK: UICollectionViewDataSource

     func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return ultrasoundMainMenu.count
    }

     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        //Delcare the place where we are getting the cell info
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! UltraSound_CollectionViewCell
        
        // Configure the cell
        cell.USMain_CellLabel.text = ultrasoundMainMenu[indexPath.item]
        cell.USDetail_CellLabel.text = ultrasoundMenuDetail [indexPath.item]
        
        
        return cell
    }

 
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        print(storyBoardID [indexPath.item])

        
            // Set the Storyboard ID to each indexPath.
            let SBID = storyBoardID [indexPath.item]
            
            // Name has to reflect the origionting SB.
            let storyboard = UIStoryboard(name: "Ultrasound", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: SBID)
        
        self.present(vc, animated: true, completion: nil)

            // Push the ViewController via Navigation
//            self.navigationController?.pushViewController(vc, animated: true)
        
        
    }
    
    
   


} // Close the class 
