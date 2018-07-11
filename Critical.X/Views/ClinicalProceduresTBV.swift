//
//  ClinicalProceduresTBV.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 7/9/18.
//  Copyright © 2018 Jadie Barringer III. All rights reserved.
//

import UIKit
import AKLabel

class ClinicalProceduresTBV: UITableViewController {

    /**
     Animate Label
     
     - Remark: Animates a UILabel using the AKLabel file.
     - SeeAlso: https://github.com/akshaysyaduvanshi/AKLabel
     - Requires: AKLabel.swift file to function. Need to also change the outlet to the AKLabel subclass.
     - Warning: If the subclass is not changed, or the IBOutlet doesnt reflect the AKLabel as well as importing the label, it will crash.
     **/
   
    @IBOutlet weak var proceduresSubtitle: AKLabel!
    
    
    override func viewDidAppear(_ animated: Bool) {
   
        let subtititleText = "Procedures and Imaging"
        proceduresSubtitle.animate(text: subtititleText, duration: 1, completion: nil)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        proceduresSubtitle.text = ""
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

   

}
