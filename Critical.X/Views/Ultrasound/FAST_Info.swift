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
    
    // Cardiac Views
    case HeartParasternal = "Heart_Parasternal"
    case subXyphoid = "Heart_subxyphoid"
    case subxy = "Subxyphoid"
    
    // RUQ
    case RUQAnatomy = "RUQAnatomyFast"
    case SweepThroughRUQ = "SweepThroughRUQ"
    case RUQProbePosition = "RUQProbePosition"
    case RUQPatology = "Pathology-RUQ"
    case PathologyRUQ_Image = "Pathology_RUQ_FreeFluidImage"
    case PathologyRUQ_FluidPGGutter = "Pathology_RUQ_ParaglottcFreeFluid"
    
    
    // LUQ Views
    
    case LUQProbe = "LUQProbePosition"
    case LUQProbeAnatomy = "LUQ_ProbeAnatomy"
    case LUQ_SweepThrough = "LUQ_SweepThrough"
    case Pathology_LUQ_Img = "Pathology_LUQ_Image"
    case Pathology_LUQ_PosFAST2 = "LUQ_PosFast2"
    case Pathology_LUQ_PosFast1 = "LUQ_PosFast1"

} // End Enum






//MARK: - View Description Enum
enum ViewDescription: String {
    
    //MARK: - RUQ
    case RUQ_morrisonsTextDescription =
    """
    \rThe RUQ is the most sensitive region for free- fluid accumulation compared to the other regions. When viewing the Right Upper Quadrant, the probe indicator should be pointing cephalad on the patients right mid-axillary side.
    
    \rThese are the visible areas of focus:
    \r1) Hepatorenal Recess - Morrisons Pouch
    \r2) Inferior hepatic edge/inferior pole of kidney
    \r3) The diaphragm
    \r4) Pleural Space
    
    \rTechnique:
    \rProbe Indicator: Cephalad (points cranially).
    \rIn this view, the liver is easily seen. The diaphragm, slightly more difficult to identify. If you're unable to identify the diaphragm, have the patient take a breath or wait for inspiration as the diaphram should lower into view. Sometimes rib shadows can obstruct the view. Widely fan through the field and follow the lower edge of the liver down toward the posterior until you get a good view of the tip. If there's free fluid (jet black) in Morrison's pouch, it should be seen around the lower edge and tip of the liver.
    
    \rBelow you can see a full sweep of the RUQ. Notice the landmarks.
    """
    
    //MARK: - LUQ
    case leftUpperQuadrant =
    """
      \rThe LUQ a.k.a the perisplenic, or splenorenal view is used to visualize the presence of free-fluid around the spleen and in the chest around the costophrenic angle. It's technically challenging and less sensitive for free-fluid than the RUQ due to the spleen being smaller to identify compared to the liver, the acoustic window being lessened due obstruction from the stomach and the clinician having to reach across the patient.
    
    \rThe traditional windows obtained in the LUQ are:
    \r1) Spenorenal Interface
    \r2) Inferior tip of the spleen
    \r3) The diaphragm, above and below
    \r4) Inferior Pole of the Left Kidney
    
    \rTechnique:
    \rProbe Indicator: More cephalad (points cranially) and posterior.
    \rStart midaxillary around the 8th ICS sweeping anterior to posterior until the splenorenal interface is identified. If there's difficulty visualizing the acoustic window, it maybe because the transducer is not posterior or superior enough. Once the spleen/kidney is located fan the probe in all directions to evaulate the area.
    
    \rIn a normal scan, the spleen and left kidney are tightly juxtaposed seperated by a hyperechoic line. The ecogenic line just cephalad to the spleen is the diaphargm. If there's free fluid accumilation, it's more likely to be found in the subphrenic space (between the spleen and diaphragm). Pleural effusions will appear as an anechoic (jet black) stripe or triangle just superior to the diaphragm.
    
    \rBelow you can see a full sweep of the LUQ. Notice the landmarks.
    """
    
    
    
}//End Enum




//MARK: - Abnormal Enum
enum AbnormalFindings: String {
    case RUQ = """
    Concerning findings in the RUQ should be consistent with solid organ injuries and/or hemoperitoneum.
    
    1) Hemoperitoneum: When there's a suspected hemoperitoneum, you will notice an anechoic (black) region usually in the morrisons pouch, between the liver and kidney. If there's free fluid (jet black) in morrisons pouch it should be seen around the lower edge and tip of the liver.
    
    2) Solid Organ Injuries: Look for lacerations to the liver and kidneys as well as ruptures.
    
    \rPositive FAST & Stable patient -> Send to CT
    \rPositive FAST & Unstable patient -> OR
    \rNegative FAST + Stable patient, low MOI -> Observe and consider serial exams to monitor.
    """
    
    case LUQ = """
    Concerning findings in the LUQ should be consistent with solid organ injuries and/or hemoperitoneum.
    
    1) Hemoperitoneum: When there's a suspected hemoperitoneum, you will notice an anechoic (black) region around the spleen usually at the inferior and superior poles of the left kidney between the spleen and diaphragm. Due to the phrenicocolic ligament blood is restricted to flow down the paracolic gutter, so it collects in perisplenic space. Also fluid collection can be appreciated in the pleural and subdiaphragmatic spaces as well.
    
    2) Solid Organ Injuries: Look for renal and splenic lacerations as well as ruptures.
    
    \rPositive FAST & Stable patient -> Send to CT
    \rPositive FAST & Unstable patient -> OR
    \rNegative FAST + Stable patient, low MOI -> Observe and consider serial exams and monitor.
    """
}

