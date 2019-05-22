//
//  CalStarProtocol_ViewController.swift
//  Critical-CalStar
//
//  Created by Jadie Barringer III on 5/22/19.
//  Copyright © 2019 Jadie Barringer III. All rights reserved.
//

import UIKit

class CalStarProtocol_ViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var csCollectionView: UICollectionView!
    
    @IBOutlet weak var closeButton: UIButton! {
        // Takes the button and makes it into a circle
        didSet {closeButton.layer.cornerRadius = closeButton.frame.size.width / 2 }
    }
    
    // Main Title
    var protocolTitles = [String]()
    
    // Subtitles
    var protocolSubject = [String]()
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        
        // SEt the titles
        protocolTitles = [
            
            "Weather Mimimums",
            "Respiratory Emergencies",
       ]
        
        protocolSubject = [
            
            //SAH
           "Aviation",
           
           "Medical",
            
          
        ]
        
    }
    
    @IBAction func dismissClinicalView(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        print("View Controller was dismissed")
        
    }
   
    
}

extension CalStarProtocol_ViewController {
    
    // MARK: UICollectionViewDataSource
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return protocolTitles.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        //Delcare the place where we are getting the cell info
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! CalStar_Protocol_CollectionViewCell
        
        // Configure the cell from the oulets in the cell Class.
        cell.protocolTitleLabel.text = protocolTitles [indexPath.item]
        
        cell.protocolDetailLabel.text = protocolSubject [indexPath.item]
        
        // We are changing the color of the Detail Subtitle only here.
        return cell
    }
    
    // Pass the data from the cells and data to the detailView Controller.
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        
        switch indexPath.item {
            
            //  Segue to the reference page from each cell. //  Opens the webView outside the app no VC
            
        case 0: //
            if let url = URL(string: "https://calstar.org/services/safety/") {
                UIApplication.shared.open(url, options: [:])
            }
            
       
            
            
            
            
            
        default:
            break
        }
        
    }
}
