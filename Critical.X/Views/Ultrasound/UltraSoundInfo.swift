//
//  File.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 1/17/19.
//  Copyright © 2019 Jadie Barringer III. All rights reserved.
//

import Foundation


//MARK: - Image Enum
enum UltraSoundImages: String {
    case HeartParasternal = "Heart_Parasternal"
    case subXyphoid = "Heart_subxyphoid"
    case subxy = "Subxyphoid"
    case RUQAnatomy = "RUQAnatomyFast"
    case SweepThroughRUQ = "SweepThroughRUQ"
    case RUQProbePosition = "RUQProbePosition"
    
} // End Enum






//MARK: - View Description Enum
enum ViewDescription: String {
    
    //MARK: - RUQ
    case RUQ_morrisonsTextDescription =
    """
    \rThe RUQ is the most sensitive region for free- fluid accumilation compared to the other regions. When viewing the Right Upper Quadrant the probe indicator should be pointing cephalad on the patients right mid-axillary side side.
    
    \rThere are 3 visible areas of focus:
    \r1) Hepatorenal Interface - Morrisons Pouch
    \r2) Inferior pole of the right kidney
    \r3) The diaphragm
    
    \rTehcnique:
    \rFollow the lower edge of the liver down toward the posterior until you get a good view of the tip. If there's free fluid (jet black) in morrisons pouch it should be seen around the lower edge and tip of the liver. Below you can see a full sweep of the RUQ.
    """
    
    //MARK: - LUQ
    case leftUpperQuadrant =
    """
    The LUQ aka the perisplenic view is used to visualize the presence of free-fluid around the spleen and in the chest around the costophrenic angle. The traditional views obtained in the LUQ are:
    \r1) Spenorenal Interface
    \r2) Inferior tip of the spleen
    \r3) The diaphragm
    \r4) Inferior Pole of the Left Kidney
    """
    
    
    
}//End Enum




//MARK: - Abnormal Enum
enum AbnormalFindings: String {
    case RUQ = """
    Concerning findings in the RUQ should be consistent with solid organ injuries and/or hemoperitoneum.
    
    1). Hemoperitoneum: When there's a suspected hemoperitoneum, you will notice an anechoic (black) region usually in the morrisons pouch, between the liver and kidney. If there's free fluid (jet black) in morrisons pouch it should be seen around the lower edge and tip of the liver.
    
    2). Solid organ injuries: Look for lacerations to the liver and kidneys as well as ruptures.
    
    """
}

