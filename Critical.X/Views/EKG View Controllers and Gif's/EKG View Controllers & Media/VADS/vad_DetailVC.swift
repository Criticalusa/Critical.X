//
//  vad_DetailVC.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 3/2/19.
//  Copyright © 2019 Jadie Barringer III. All rights reserved.
//

import UIKit




class vad_DetailVC: UIViewController {

    @IBOutlet weak var titleView: UILabel!
    @IBOutlet weak var explanationLabel: UILabel!
    @IBOutlet weak var vadImage: UIImageView!
    @IBOutlet weak var vadDetailScroller: UIScrollView!
    
    @IBOutlet weak var overView: UIView!

    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    
   
    var vadChildTitle = String()
   
    var vadChildDescription = NSAttributedString ()
   
    var imageString = String()
    
    // We use this boolean to show the view on the detail View controller
    var overViewHidden: Bool = false
    
    
    
    //MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Hide the overiView View
        overView.isHidden  = overViewHidden
        
        vadDetailScroller.sizeToFit()
        
        // Set the textFields to the passed string
        titleView.text = vadChildTitle
        
        explanationLabel.attributedText = vadChildDescription
        
        vadImage.image = UIImage(named: imageString)
        
    

    }
    
    override func viewDidAppear(_ animated: Bool) {
        heightConstraint.constant = explanationLabel.frame.origin.y + explanationLabel.frame.size.height + 100

        print("\(explanationLabel.frame.size.height) Height constraint Value")
    }
    
    @IBAction func dismissVadDetail(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        print("Vad Detail View Controller was dismissed")
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
