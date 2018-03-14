//
//  StrokeMenu.swift
//  Neuro
//
//  Created by Jadie Barringer III on 1/30/18.
//  Copyright © 2018 Jadie Barringer III. All rights reserved.
//

import UIKit

class Stroke: UIViewController {

    @IBOutlet weak var subduralHematomaDescription: UILabel!
    @IBOutlet weak var sah: UILabel!
    @IBOutlet weak var ischemicStroke_Description: UILabel!
    @IBOutlet weak var IntracerebralHemorrhage_Description: UILabel!
    @IBOutlet weak var epidural_Description: UILabel!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //scrollView.delegate = self as! UIScrollViewDelegate

        scrollView.contentSize = CGSize(width: self.view.frame.size.width, height: scrollView.frame.size.height)

        subduralHematomaDescription.text = "Subdural Hematoma\n\nA subdural hematoma is an accumulation of blood between the dura mater and brain. It results from tearing of bridging veins which connect the surface of the brain and the dural sinuses. Subdural hematoma may have both acute and chronic presentations. Acute subdural hematoma develops immediately after head trauma and can be life- threatening. Classic findings on the CT exhibit a crescent-shaped area oh high attenuation.\n\nHeadache is the most common symptom, with contralateral hemiparesis, seizures, and a wide variety of cortical dysfunction also common. If sufficiently large, a subdural hematoma can produce increased intracranial pressure with a resulting alteration in the LOC.\n\nExam Findings:\n\n• Decreased LOC\n• Drowsiness N/V\n• Headache\n• Confusion\n• Unequal Pupils\n• Dilated Pupils"
        
        
         sah.text = "Subarachnoid hemorrhage\n\nA subarachnoid hemorrhage is characterized as bleeding in the subarachnoid space between the pia matter and the arachnoid membrane. Out of 20% of all the hemorrhagic strokes that occur, subarachnoid hemorrhages account for up to 10%. Most subarachnoid hemorrhages are caused by ruptured aneurysms and trauma. Blood collections are seen in the sylvian fissures, the basal cisterns and occasionally over the tentorium. The classic complaint is being \"the worst headache of my life.\" Mortality is approximately 50%.\n\nExam Findings:\n\n• Severe Headache\n• Meningism\n• N/V\n• Decreased LOC\n• Stiff neck\n• Confusion\n• Photophobia\n• Thunderclap onset"
        
        ischemicStroke_Description.text = "Ischemic Stroke\n\nAcute ischemic strokes are described as a sudden loss of blood to an area of the brain which results in neurological deficits. There can be three main subtypes of ischemia. Thrombosis, embolisms, or ischemia second to hypoperfusion.\n\nPatients can also have transient ischemic attacks in which neurological symptoms last less than generally 24 hours, the resolve. Large hypodense (dark) regions can be appreciated suggesing pathology from one of the major 3 arteries that supply the brain - anterior, middle, and posterior cerebral arteries (ACA, MCA, and PCA). Events from the middle cerebral artery are most common.\n\nExam Findings:\n\n• Headaches\n• Focal deficits\n• Slurred speech\n• Decreased LOC"
        
        IntracerebralHemorrhage_Description.text = "Intracerebral Hemorrhage\n\nIntracerebral hemorrhages (ICH), followed by ischemic strokes, are considered the second most common types of stroke. This occurs primairly from bleeding within the brain parenchyma itself - commonly caused by hypoertension and therapeutic anticoagulation therapy. Mortality and morbidity is considered extremely high. ICH are commonly associated with large mass effect- midline shifts, effacement of the ventricles and sulci. Management of intracerebral hemorrhages can either be managed medically or surgically.\n\nExam Findings:\n\n• Decreased LOC\n• Major neurological deficits\n• Altered LOC\n• Headache\n• Seizures\n• Vision loss"
      
      epidural_Description.text = "An epidural hematoma is an uncommon, but serious head injury is characterized as a collection of blood between the skull and the dura mater. This is usually a result from an arterial injury. Most commonly, the Middle Meningeal Artery. 85% of all epidural hematomas are arterial related. CT findings include a lens – shaped or by convex pattern.\n\nExam Findings:\n\n• LOC followed by a lucid interval usually from trauma\n• Headaches\n• Focal deficits\n• Confusion\n• Decreased LOC"
        
        
    }

   
}
