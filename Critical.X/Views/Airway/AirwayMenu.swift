//
//  AirwayMenu.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 7/14/18.
//  Copyright © 2018 Jadie Barringer III. All rights reserved.
//

import UIKit
import AKLabel



class AirwayMenu: UIViewController {

  

    @IBOutlet weak var subTitleLabel: AKLabel!
    @IBOutlet weak var airWayView: UIView!
    @IBOutlet var IntubationButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for button in IntubationButtons {
            button.layer.cornerRadius = 4
        }
        
        // Animates the subtitle once the view appears
    
        /// Rounds the corners 15 pixels of the UIView name. 4 px for a button
//        airWayView.clipsToBounds = true
//        airWayView.layer.cornerRadius = 4
//        
        subTitleLabel.animate(text: "Airway Management", duration: 1, completion: nil)
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation

    // When intubation button is presesed. Push the view controller via code
    @IBAction func pushToIntubationScreen(_ sender: UIButton) {
        // Name has to reflect the origionting SB.
        let storyboard = UIStoryboard(name: "Airway", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Intubation")
        
        // Calls from the UIButton extension to pulsate.
        sender.pulsate()
        
        // Push the ViewController via Navigation
        self.navigationController?.pushViewController(vc, animated: true)
    }
    

    


}
