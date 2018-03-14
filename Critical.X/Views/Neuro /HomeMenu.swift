//
//  HomeMenu.swift
//  Neuro
//
//  Created by Admin on 27/01/2018.
//  Copyright © 2018 Jadie Barringer III. All rights reserved.
//

import UIKit

class HomeMenu: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    
    @IBOutlet var menuCollectionView: UICollectionView!
    
    var mainMenu = [String]()
    var cellImages = [String]()
    var storyBoardID = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mainMenu = ["Cranial Nerves","Stroke Scores","Herniation","Increased ICP","Neuro Exam","Stroke pathology", "Normal CT brain"]
        cellImages = ["CranialNerves1","GCS1","Herniation","Brain 44","brainMap","Brain-1", "CT1" ]
        storyBoardID = ["A","StrokeCollection","C","D","E","F", "G"]
        
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mainMenu.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! NeuroCollectionViewCell
        cell.neuroCellLabel.text = mainMenu[indexPath.item]
        cell.neuroCellImage.image = UIImage (named:cellImages[indexPath.item])
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let SBID = storyBoardID [indexPath.item]
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: SBID) as? UIViewController {
            self.navigationController?.pushViewController(vc, animated: true)
        }
        print([indexPath.item])
    }
    
//////  ===== UICollectionViewDelegateFlowLayout   Change Cell size  =========================
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let screen_width = self.view.frame.size.width
//        return CGSize(width: (screen_width - 90.0)/2.0, height: 1.25 * (screen_width - 90.0)/2.0)
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
