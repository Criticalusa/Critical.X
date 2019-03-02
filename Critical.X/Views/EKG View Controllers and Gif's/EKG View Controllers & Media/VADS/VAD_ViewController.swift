//
//  VAD_ViewController.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 3/1/19.
//  Copyright © 2019 Jadie Barringer III. All rights reserved.
//

import UIKit
import AKLabel





class VAD_ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {


    @IBOutlet weak var VADTitle: AKLabel!
    @IBOutlet weak var vadCollectionView: UICollectionView!
    
    // Variable declaration.
    var vad_MainMenu = [String]()
   
    var vad_MenuDetail = [String]()
    
   
    
    
    @IBAction func dismissUSVC(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        VADTitle.animate(text: "Ventricular Assist Devices", duration: 1, completion: nil)
        
        vad_MainMenu = ["Overview", "Total Artificial Heart","Heart Mate II","Heartware"]
        
        vad_MenuDetail = ["Mechanical overview","Total artificial heart","Heart Mate II","Heartware"]
        

    }
    

    // MARK: UICollectionViewDataSource
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return vad_MainMenu.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        //Delcare the place where we are getting the cell info
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! VAD_CollectionViewCell
        
        // Configure the cell
        cell.vad_CellLabel.text = vad_MainMenu[indexPath.item]
        cell.vad_Detail_CellLabel.text = vad_MenuDetail [indexPath.item]
        
        
        return cell
    }
    
    // Enum for the segue identifier
    enum SegueIdentifier: String {
        case showVad = "vadSEgue"
        
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        print("Cell \(indexPath.row) tapped")
        
        self.performSegue(withIdentifier: SegueIdentifier.showVad.rawValue, sender: self)

    }
    
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == SegueIdentifier.showVad.rawValue
        {
            // Identitfy the cell to pass in indexPath
            let cell = sender as! UICollectionViewCell
            
            //Get the indexPAth and pass the cell
            var indexPath = vadCollectionView.indexPath(for: cell)
            
            //SEt variable for all of the titles in the array to pass
            let selectedTitleData = vad_MainMenu[(indexPath?.row)!]
            
            /////////
            if indexPath?.row == 0 {
                // Set Varibles detailView as the destination to access the variables
                let detailView = segue.destination as! vad_DetailVC
                
                
                //SEt variable for all of the titles in the array to pass
                let selectedTitleData = vad_MainMenu[(indexPath?.row)!]
                
                //The string title in the detail View
                detailView.vadChildTitle = selectedTitleData
                
                detailView.overViewHidden = false
                
                detailView.imageString = "HeartMateII"
                                
                detailView.vadChildDescription = changeAttribute_totalArtifical(text: VAD_Explanaton.Overview.display())
                
            }
            if indexPath?.row == 1 {
            
            // Set Varibles detailView as the destination to access the variables
            let detailView = segue.destination as! vad_DetailVC
            
        
               // Hide the view
                detailView.overViewHidden = true

            //The string title in the detail View
           detailView.vadChildTitle = selectedTitleData
            
            detailView.imageString = "TotalArtificialHeart"
            
            let text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                
                detailView.vadChildDescription = changeAttribute_totalArtifical(text: text)

            }
            
            if indexPath?.row == 2 {
                // Set Varibles detailView as the destination to access the variables
                let detailView = segue.destination as! vad_DetailVC
                
                //SEt variable for all of the titles in the array to pass
                let selectedTitleData = vad_MainMenu[(indexPath?.row)!]
                
                //The string title in the detail View
                detailView.vadChildTitle = selectedTitleData
                
                // Hide the view
                detailView.overViewHidden = true
                
                detailView.imageString = "HeartMateII"
                
                let artificalText =  VAD_Explanaton.HeartMateII.display()
                
                detailView.vadChildDescription = changeAttribute_totalArtifical(text: artificalText)
                
            }
            
            
            if indexPath?.row == 3 {
                // Set Varibles detailView as the destination to access the variables
                let detailView = segue.destination as! vad_DetailVC
                
                //SEt variable for all of the titles in the array to pass
                let selectedTitleData = vad_MainMenu[(indexPath?.row)!]
                
                //The string title in the detail View
                detailView.vadChildTitle = selectedTitleData
                
                // Hide the view
                detailView.overViewHidden = true
                
                detailView.imageString = "HVAD"
                
                // Set the text from the Enum
                let text = VAD_Explanaton.HVAD.display()
                
                detailView.vadChildDescription = changeAttribute_totalArtifical(text: text)

            }
            
            
        }
    }
    
    
    func changeAttribute_totalArtifical (text: String) -> NSAttributedString {
        
        // 1 set the changed text to the function
        let contextResult = text
        // 2 Set the attributed text
        let attributedText = NSMutableAttributedString.getAttributedString(fromString: contextResult)
        // 3 global vairable to set the seleted text to
        var changedString = String()
        
        //4 Delcare the differenct strings we want to single out to be highlighted
        
        //4A
        
        let thisIs = "THIS IS #3"
        let a = "nostrud exercitation"
        let what = "What to know:"
        
        
        if text.contains(thisIs){
            changedString = thisIs
            // Set the string to the changed String so its set at the end
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1), subString: changedString)
            
            let openSansFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            // Change the font of the string
            attributedText.apply(font: openSansFont!, subString: changedString)
        }
        
        if text.contains(what){
            changedString = what
            // Set the string to the changed String so its set at the end
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1), subString: changedString)
            
            let openSansFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            // Change the font of the string
            attributedText.apply(font: openSansFont!, subString: changedString)
        }
        
        if text.contains(a){
            changedString = a
            // Set the string to the changed String so its set at the end
            // This is the color of the singled out text.
            attributedText.apply(color: #colorLiteral(red: 1, green: 0.9219999909, blue: 0.6761207884, alpha: 1), subString: changedString)
            
            let openSansFont = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            // Change the font of the string
            attributedText.apply(font: openSansFont!, subString: changedString)
        }
        
        
        // Return all the changes that we created as a NSAttributed String
        return attributedText
    }




}
