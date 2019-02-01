//
//  VentDescriptionEnum.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 1/30/19.
//  Copyright © 2019 Jadie Barringer III. All rights reserved.
//

import Foundation

enum VentilatorModes: String {
    
    //Assist Control
    case AC =  """
    What to know: Assist control or (A/C) is a term used to describe a mode of ventilation similar to Control Mode Ventilation (CMV), in which the patient can trigger breaths above and over the ventilatory rate set by the ventilator. Depending on the brand of the ventilator, you will see CMV, or AC.
    \rThe ventilator delivers a preset number of breaths per min, regardless of patient effort, thus the control in the name assist control. If the patient wishes to take more than the preset number of breaths, they can- This is the (assist)  part.
    \rWhen the patient triggers a breath it will deliver a breath that contains the full set volume or pressure. If the patient is over breathing the set rate consistently, air trapping can occur in this mode as a patient may trigger additional breast before the full exhalation has occurred.
    \rBottom Line: When the ventilator is set at a rate of 14, the ventilator will deliver 14 guaranteed breaths (controlled breaths) per minute - even if the patient does not make any effort. When the ventilator senses and effort from the patient, it will deliver additional breaths (assisted breaths) above and over the set rate. These additional breaths will be the full volume or pressure that it was initially set to.
    """
    
    //APRV
    case APRV =
    """
    What to know: Airway Pressure Release Ventilation (APRV) is a proprietary name adopted from Dreager. It's also referred to as Bi-level or Bi-Vent. Instead of being a variation of PCV in which the I: E ratio is reversed, APRV is a variation of CPAP that releases pressure temporarily on exhalation.
    \rMean airway pressures and Fi02 drive this mode because there are no distending tidal volumes. This unique mode of ventilation results in higher than average airway pressures. This allows higher mean airway pressures without necessarily increasing peak airway pressures.
    \rThere are four basic settings that need to be set initially:
    \rP-High, T-High, P-Low, and T-Low.
    \r1. P-High: This is the pressure used to maintain the alveoli. It's the CPAP. The higher the P-High, the higher the pressure. This is typically set to the current plateau pressure which is usually around 28-30 cmH20. Once compliance is improved, the P-high will have to be adjusted to a lower setting.
    \r2. T-High: This is the inspiratory time. Since conventional respiratory rates are typically 8-12 breaths per min, the T-high is set to approx: 4.5-6 seconds to compliment the normal rate. A longer T-High will improve oxygenation but will also prolong breaths causing hypercapnia.
    \r3. P-Low: This is the pressure that the ventilator will drop to when the pressure is released. This is set to zero. Since end-expiratory pressures rarely reach zero, setting the P-low to zero produces the highest pressure for the patient, thus helps with better gas release. There are times when the provider may need to increase the mean airway pressure. This is where the pLow is adjusted. However, this will restrict ventilation.
    \r4. T-Low: This is the time spent at pLow. Usually, this is set to 0.5-0.8 seconds. This brief period is just enough time to allow for the gas to escape while preventing derecruitment and long enough to obtain a suitable tidal volume at the same time. If the tidal volume is inadequate, the expiratory time is lengthened; this will offload more C02 and lead to derecruitment. If the tidal volume is too high, the expiratory time is shortened.
    
    \rClinical Reference 1. Owens, W. (2012). The ventilator book. Lexington, KY: First Draught Press.
    """
    
    // BIPAP
    case Bipap = """
    What to know: Non-invasive ventilation is a method of breathing support that does not require the insertion of an ETT tube. BiPAP stands for Biphasic Positive Airway Pressure. Other names for BiPAP include bilevel ventilation, non-invasive ventilation, non-invasive positive pressure ventilation or NIPPV. BiPAP is provided through a tightly fitted mask. The mass will cover the nose and the mouth.
    \rA the softly inflated rim around the edge of the mask creates a tight seal to maintain the level of positive pressure.
    \rWhen the patient attempts to breathe, a flow of air is introduced towards the patient's mouth or nose (creating the upper-pressure level). As the patient breathes in, the flow of air assists the patient's breathing by making it easier to take a significant breath.
    \rWhen the patient exhales, a minimum level of air pressure is trapped within the mask creating the lower pressure level.
    \rThis minimum pressure helps to keep disease airways and alveoli from collapsing. BiPAP can be useful for some patients by giving them enough support to avoid the need for mechanical ventilation. Noninvasive ventilation does not provide enough support for very sick patients. Thus, mechanical ventilation is required.
    \rBottom Line: An inspiratory pressure is set and breaths can be triggered by the patient allowing the patient to breath at both high (thw levels of CPAP) w/ pressure support and low pressures.
    """
    
    //CMV
    case IMV = """
    What to know: Control mode ventilation (CMV) is a time – cycling process. The timing mechanism generates the inspiratory tidal volume breath - independent of the patient's respiratory effort. During CMV, the ventilator does not allow the patient to self-generate a tidal volume breath.
    \rPatients awakening from sedation or pharmacologic paralysis may experience agitation and air hunger since they cannot interface with the ventilator.\n\nControl Mode ventilation is used primarily with patients unable or not required to generate a voluntary respiratory effort.
    \rControl modes in AC modes are technical variations of each other – differentiated only by the preset triggering threshold for AC ventilation. Clinicians traditionally choose A/C mode as the initial mode due to the simplicity, comfort level and patient ability to trigger a breath.
    """
    
    //CPAP/PS
    case CPAP =
    """
    What to know: Continuous Positive Airway Pressure, CPAP, allows for a constant pressure to be maintained above atmospheric pressure throughout the respiratory cycle. The patient must be able to generate a  breath to use this mode.
    \rTo start, the ventilator respiratory rate is adjusted to zero so that no control breaths are delivered during the cycle.
    \rA CPAP of 5 cm of water is traditionally started to maintain pressure above atmospheric pressure. CPAP can be provided alone or in combination with pressure support ventilation.
    \rDuring spontaneous ventilations, the patient receives a constant CPAP above atmospheric pressure augmented with a preset pressure support ventilation during each spontaneous breath.
    \rBottom Line: A CPAP 5 cmH20 plus pressure support ventilation of 10 cmH20. CPAP by itself or in combination with pressure support is the primary mode used to promote spontaneous ventilation to wean patients from mechanical ventilation. Remember, the patient must beable to spontaneusly breath on their own. Placing an apenic patient on CPAP will cause the patient to code.
    """
    case IRV = """
    What to know: Inverse Ratio Ventilation is a subset of pressure control ventilation in which the inspiratory time is prolonged. IRV's primary indication is in patients with ARDS with refractory hypoxemia or hypercapnia. A normal I:E ratio is 1:3. However, in IRV, the ratios: 1:1, 2:1, or 3:1 may be used. This lowers peak airway pressures, but increases mean airway pressures.\n\nThe result may improve oxygenation but at the expense of compromising venous return and cardiac output - thus is not clear that this mode of ventilation leads to improved survival.
    """
    
    // PCV
    case PCV = """
    What to know: Pressure Control Ventilation is a pressure – limiting, time – cycled mode in which a constant pressure is maintained throughout the preset inspiratory time (I – time).
    \rSimply put, the pressure is the endpoint rather than volume. Therefore, the expiratory phase of a breath ends once a preset pressure is reached, regardless of the volume that's delivered.
    \rAs gas flows through the ventilator circuit and into the patient's lungs, the airway pressure rises, resulting in increased alveolar volume. The result is that delivered airway pressure = intrapulmonary pressure; ending the inspiratory phase.
    \rClinicians often change the ventilation mode from volume controlled (CMV, A/C, or SIMV) to pressure control ventilation if adequate ventilation or oxygenation goals are not achieved. Or, if excessive peak airway pressures are required to optimize gas exchange. Patients with Acute Lung Injury (ALI) or Acute Respiratory Distress Syndrome (ARDS) often require pressure control ventilation. This is primarily due to the difficulties in optimizing ventilation/perfusion goals with conventional volume control modes.
    \rReferences: \n\n1. Hess, D. R., & Kacmerek, R. M. (2002). Essentials of mechanical ventilation (2nd ed.). New York: McGraw-Hill.
    """
    // PRVC
    case PRVC = """
    What to know: Pressure Regulated Volume Control
    
    """
    // PSV
    case PSV = """
    What to know: Pressure Support Ventilation
    """
    // SIMV
    case SIMV = """
    What to know: Synchronized Intermittent Mandatory Ventilation (SIMV) combines breaths and supported breaths. The mandatory breaths can either can be volume or pressure controlled, but most common they are volume controlled breaths.
    
    In this mode, the patient is allowed to breathe spontaneously. The ventilator will deliver a mandatory breath in synch with the patients breathing effort. There's usually an assist window that the ventilator sets to look for spontaneous breathing. If no breath is detected, then a mandatory breath will be given.
    
    Bottom Line: If the ventilator settings are set a TV  550 and a RR  12, the patient is guaranteed 12 breaths per/min at 550. Any additional breaths over the set rate, the patient will only get whatever volumes they pull and the ventilator will deliver a pressure supported breath for each of the patient breaths above the pre-set frequency.
    
    Caveat: This is all good if the patient is healthy and strong, however, most intubated patients in the ICU are not. Its easier for these patients to breath faster, rather than take deep adequate breaths. Therefore, the quality of breaths that are taken over the set rate are usually inadequate and lead to a higher work of breathing.
    """
    
}
