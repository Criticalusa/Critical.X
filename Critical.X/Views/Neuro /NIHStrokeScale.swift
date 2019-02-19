//
//  NIHStrokeScale.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 2/19/19.
//  Copyright © 2019 Jadie Barringer III. All rights reserved.
//

import UIKit

class NIHStrokeScale: UIViewController {
    
    //MARK: //////// IBOutlets There are 15 sections of the stroke scale //////
    
     //MARK: - LOC -IBOutlet
    @IBOutlet weak var loc_alert: UIButton!
    @IBOutlet weak var loc_Drowsy: UIButton!
    @IBOutlet weak var loc_Obtunded: UIButton!
    @IBOutlet weak var loc_Comatose: UIButton!

    //MARK: - LOC Questions -IBOutlet
    @IBOutlet weak var locQuestion_Both: UIButton!
    @IBOutlet weak var locQuestion_One: UIButton!
    @IBOutlet weak var locQuestion_Neither: UIButton!

    //MARK: - LOC COmmands -IBOutlet
    @IBOutlet weak var loc_Commands_Both: UIButton!
    @IBOutlet weak var loc_Commands_One: UIButton!
    @IBOutlet weak var loc_Commands_Neither: UIButton!

    //MARK: - Eye Movements -IBOutlet
    @IBOutlet weak var eyeMovements_Normal: UIButton!
    @IBOutlet weak var eyeMovements_MildGaze: UIButton!
    @IBOutlet weak var eyeMovements_CompleteGaze: UIButton!

    //MARK: - Visual Fields -IBOutlet
    @IBOutlet weak var visualFields_Normal: UIButton!
    @IBOutlet weak var visualFields_PartialHemianopia: UIButton!
    @IBOutlet weak var visualFields_CompleteHemianopia: UIButton!
    @IBOutlet weak var visualFields_BilateralHemianopia: UIButton!

    //MARK: - Facial -IBOutlet
    @IBOutlet weak var facial_Normal: UIButton!
    @IBOutlet weak var facial_Minor_Paralysis: UIButton!
    @IBOutlet weak var facial_Major_Paralysis: UIButton!
    @IBOutlet weak var facial_Complete_Paralysis: UIButton!
    
    
    //MARK: - Motor- LA -IBOutlet
    @IBOutlet weak var leftArm_Normal: UIButton!
    @IBOutlet weak var leftArm_Drift: UIButton!
    @IBOutlet weak var leftArm_Drifts_Within10Sec: UIButton!
    @IBOutlet weak var leftArm_Movement: UIButton!
    @IBOutlet weak var leftArm_CompleteParalysis: UIButton!
    @IBOutlet weak var leftArm_AmputationJointFusion: UIButton!

    //MARK: - Motor RA -IBOutlet
    @IBOutlet weak var rightArm_Normal: UIButton!
    @IBOutlet weak var rightArm_Drift: UIButton!
    @IBOutlet weak var rightArm_Drifts_Within10Sec: UIButton!
    @IBOutlet weak var rightArm_Movement: UIButton!
    @IBOutlet weak var rightArm_CompleteParalysis: UIButton!
    @IBOutlet weak var rightArm_AmputationJointFusion: UIButton!
    
    //MARK: - Motor LL -IBOutlet
    @IBOutlet weak var leftLeg_Normal: UIButton!
    @IBOutlet weak var leftLeg_Drift: UIButton!
    @IBOutlet weak var leftLeg_Drifts_Within10Sec: UIButton!
    @IBOutlet weak var leftLeg_Movement: UIButton!
    @IBOutlet weak var leftLeg_CompleteParalysis: UIButton!
    @IBOutlet weak var leftLeg_AmputationJointFusion: UIButton!
    
    //MARK: - Motor RL -IBOutlet
    @IBOutlet weak var rightLeg_Normal: UIButton!
    @IBOutlet weak var rightLeg_Drift: UIButton!
    @IBOutlet weak var rightLeg_Drifts_Within10Sec: UIButton!
    @IBOutlet weak var rightLeg_Movement: UIButton!
    @IBOutlet weak var rightLeg_CompleteParalysis: UIButton!
    @IBOutlet weak var rightLeg_AmputationJointFusion: UIButton!
    
    //MARK: - Limb Ataxia -IBOutlet
    @IBOutlet weak var LimbAtaxia_Absent: UIButton!
    @IBOutlet weak var LimbAtaxia_PresentIn1: UIButton!
    @IBOutlet weak var LimbAtaxia_PResentIn2: UIButton!
    
    //MARK: - Sensory -IBOutlet
    @IBOutlet weak var sensory_Normal: UIButton!
    @IBOutlet weak var sensory_MildToModerate: UIButton!
    @IBOutlet weak var sensory_SevereToTotal: UIButton!
    
    //MARK: - Language Aphasia -IBOutlet
    @IBOutlet weak var languageAphasia_Normal: UIButton!
    @IBOutlet weak var languageAphasia_MildToModerate: UIButton!
    @IBOutlet weak var languageAphasia_Severe: UIButton!
    @IBOutlet weak var languageAphasia_Mute: UIButton!
    
    //MARK: - Dysarthria (slurred) -IBOutlet
    @IBOutlet weak var dysarthria_Normal: UIButton!
    @IBOutlet weak var dysarthria_MildToModerate: UIButton!
    @IBOutlet weak var dysarthria_Severe: UIButton!
    @IBOutlet weak var dysarthria_Intubated: UIButton!
    
    //MARK: - Neglect -IBOutlet
    @IBOutlet weak var neglect_NoAbnormality: UIButton!
    @IBOutlet weak var neglect_Mild: UIButton!
    @IBOutlet weak var neglect_Profound: UIButton!

    
    
    //MARK: Updates the score to the label when the button is selected.
    @IBOutlet weak var nihScoreLabel: UILabel!
    var count: Int = 0 {
        didSet {
            nihScoreLabel.text = " \(count)"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Start with the Score as zero
        count = 0
        // Do any additional setup after loading the view.
    }
    

    //MARK: - Setting Points for each button the points
    func calculateScore() {
        count = 0
        
        // if  <#Button#>  .isSelected { count += <# What Score #> }

        //MARK: - LOC
        if  loc_alert.isSelected { count += 0 }
        if  loc_Drowsy.isSelected { count += 1 }
        if  loc_Obtunded.isSelected { count += 2 }
        if  loc_Comatose.isSelected { count += 3 }

        //MARK: - LOC Questions
        if  loc_Commands_Both.isSelected { count += 0 }
        if  loc_Commands_One.isSelected { count += 1 }
        if  loc_Commands_Neither.isSelected { count += 2 }
        
        //MARK: - LOC COmmands
        if  locQuestion_Both.isSelected { count += 0 }
        if  locQuestion_One.isSelected { count += 1 }
        if  locQuestion_Neither.isSelected { count += 2 }
        
        //MARK: - Eye Movements
        
        //MARK: - Visual Fields
        
        //MARK: - Facial
        
        //MARK: - Motor- LA
        
        //MARK: - Motor RA
        
        //MARK: - Motor LL
        
        //MARK: - Motor RL
        
        //MARK: - Limb Ataxia
        
        //MARK: - Sensory
        
        //MARK: - Language Aphasia
        
        //MARK: - Dysarthria (slurred)
        
        //MARK: - Neglect
        

    }

}

extension NIHStrokeScale {
    
    //MARK: - LOC Button Actions
    //MARK: LOC Action
    @IBAction func pressedLOC_Alert(_ sender: Any) {
        // When the button is selected
        if loc_alert.isSelected == true {
            loc_alert.isSelected = false
        }
            // Same button is true and others are turned off cause only one from the section can talley
        else {
            loc_alert.isSelected = true  // Selected
            loc_Drowsy.isSelected = false  // Deselected
            loc_Obtunded.isSelected = false  // Deselected
            loc_Comatose.isSelected = false    // Deselected
        }
        self.calculateScore()
    }
    
    //MARK: - Pressed Drowsy
    
    @IBAction func pressed_LOC_Drowsy(_ sender: Any) {
        // When the button is selected
        if loc_Drowsy.isSelected == true {
            loc_Drowsy.isSelected = false
        }
            // Same button is true and others are turned off cause only one from the section can talley
        else {
            loc_Drowsy.isSelected = true    // Selected
            loc_alert.isSelected = false    // Deselected
            loc_Obtunded.isSelected = false // Deselected
            loc_Comatose.isSelected = false // Deselected
        }
        self.calculateScore()
    }
    
    
    @IBAction func pressed_LOC_Obtunded(_ sender: Any) {
        // When the button is selected
        if loc_Obtunded.isSelected == true {
            loc_Obtunded.isSelected = false
        }
            // Same button is true and others are turned off cause only one from the section can talley
        else {
            loc_Obtunded.isSelected = true // Selected
            loc_Drowsy.isSelected = false// Deselected
            loc_alert.isSelected = false// Deselected
            loc_Comatose.isSelected = false// Deselected
        }
        self.calculateScore()
    }
    
    //MARK: - Pressed Drowsy
    @IBAction func pressed_LOC_Comatose(_ sender: Any) {
        // When the button is selected
        if loc_Comatose.isSelected == true {
            loc_Comatose.isSelected = false
        }
            // Same button is true and others are turned off cause only one from the section can talley
        else {
            loc_Comatose.isSelected = true // Selected
            loc_alert.isSelected = false // Deselected
            loc_Obtunded.isSelected = false// Deselected
            loc_Drowsy.isSelected = false// Deselected
        }
        self.calculateScore()
    }
    
    
    
    //MARK: LOC Questions
    //MARK: - Pressed both
    @IBAction func locQuestion_Both(_ sender: Any) {
        // When the button is selected
        if locQuestion_Both.isSelected == true {
            locQuestion_Both.isSelected = false
        }
            // Same button is true and others are turned off cause only one from the section can talley
        else {
            locQuestion_Both.isSelected = true // Stays selected
            locQuestion_One.isSelected = false // Deselected
            locQuestion_Neither.isSelected = false // Deselected
        }
        self.calculateScore()
    }
    
    //MARK: - Loc Buttons Pressed
    @IBAction func locQuestion_One(_ sender: Any) {
        // When the button is selected
        if locQuestion_One.isSelected == true {
            locQuestion_One.isSelected = false
        }
            // Same button is true and others are turned off cause only one from the section can talley
        else {
            locQuestion_One.isSelected = true // Stays selected
            locQuestion_Both.isSelected = false // Deselected
            locQuestion_Neither.isSelected = false // Deselected
        }
        self.calculateScore()
    }
    
    @IBAction func locQuestion_Neither(_ sender: Any) {
        // When the button is selected
        if locQuestion_Neither.isSelected == true {
            locQuestion_Neither.isSelected = false
        }
            // Same button is true and others are turned off cause only one from the section can talley
        else {
            locQuestion_Neither.isSelected = true // Stays selected
            locQuestion_Both.isSelected = false // Deselected
            locQuestion_One.isSelected = false // Deselected
        }
        self.calculateScore()
    }
    
    
    
    
    //MARK: - LOC Commands Pressed
    @IBAction func loc_Commands_Both(_ sender: Any) {
        // When the button is selected
        if loc_Commands_Both.isSelected == true {
            loc_Commands_Both.isSelected = false
        }
            // Same button is true and others are turned off cause only one from the section can talley
        else {
            loc_Commands_Both.isSelected = true // Stays selected
            loc_Commands_One.isSelected = false // Deselected
            loc_Commands_Neither.isSelected = false // Deselected
        }
        self.calculateScore()
    }

    
    @IBAction func loc_Commands_One(_ sender: Any) {
        // When the button is selected
        if loc_Commands_One.isSelected == true {
            loc_Commands_One.isSelected = false
        }
            // Same button is true and others are turned off cause only one from the section can talley
        else {
            loc_Commands_One.isSelected = true // Stays selected
            loc_Commands_Both.isSelected = false // Deselected
            loc_Commands_Neither.isSelected = false // Deselected
        }
        self.calculateScore()
    }

    
    @IBAction func loc_Commands_Neither(_ sender: Any) {
        // When the button is selected
        if loc_Commands_Neither.isSelected == true {
            loc_Commands_Neither.isSelected = false
        }
            // Same button is true and others are turned off cause only one from the section can talley
        else {
            loc_Commands_Neither.isSelected = true // Stays selected
            loc_Commands_One.isSelected = false // Deselected
            loc_Commands_Both.isSelected = false // Deselected
        }
        self.calculateScore()
    }

}// End Extension
