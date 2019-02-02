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
    \rDisadvantages to A/C: 1. Auto-PEEP: In those who are tachypenic and don't have enough time to exhale. 2. Ventiltor Induced Lung Injury (VILI) from volutrauma- overinflation of the alveoli. Consider to have pre-set TV ranges 6-8 mL/Kg. Reference the IBW calculator for suggested starting tidal volumes.
    \rBottom Line:🎖 When the ventilator is set at a rate of 14, the ventilator will deliver 14 guaranteed breaths (controlled breaths) per minute - even if the patient does not make any effort. When the ventilator senses and effort from the patient, it will deliver additional breaths (assisted breaths) above and over the set rate. These additional breaths will be the full volume or pressure that it was initially set to.
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
    """
    
    // BIPAP
    case Bipap = """
    What to know: Non-invasive ventilation is a method of breathing support that does not require the insertion of an ETT tube. BiPAP stands for Biphasic Positive Airway Pressure. Other names for BiPAP include bilevel ventilation, non-invasive ventilation, non-invasive positive pressure ventilation or NIPPV. BiPAP is provided through a tightly fitted mask. The mass will cover the nose and the mouth.
    \rA softly inflated rim around the edge of the mask creates a tight seal to maintain the level of positive pressure.
    \rWhen the patient attempts to breathe, a flow of air is introduced towards the patient's mouth or nose (creating the upper-pressure level). As the patient breathes in, the flow of air assists the patient's breathing by making it easier to take a significant breath.
    \rWhen the patient exhales, a minimum level of air pressure is trapped within the mask creating the lower pressure level.
    \rThis minimum pressure helps to keep disease airways and alveoli from collapsing. BiPAP can be useful for some patients by giving them enough support to avoid the need for mechanical ventilation. Noninvasive ventilation does not provide enough support for very sick patients. Thus, mechanical ventilation is required.
    \r Suggested Settings:
    \r• IPAP = 10-16 (max 25) cmH20
    \r• EPAP 4-6 (max 10) cmH20
    \r• Titrate the SpO2 to be greater than 92%
    \r• If ventilation needs to be improved, increase the IPAP
    \r• If oxygenation needs to be improved, increase the FiO2 or the EPAP in increments of 2 and keep the PSV > 5.
    \r• Note: When increasing the EPAP, make sure to increase the IPAP by the same amount, to ensure the same ratio of pressure support.
    \rBottom Line:🎖 BiLevel provides two pressure levels (IPAP and EPAP). IPAP = Inspiratory positive airway pressure which controls the peak inspiratory pressure during inspiration and EPAP = Expiratory positive airway pressure which controls the end-expiratory pressure. An inspiratory pressure is set, and the patient triggers a breath allowing them to breathe.
    \rWhen EPAP = IPAP, it is used as CPAP. When the IPAP > EPAP, EPAP is used as PEEP (which is the pressure maintained at the end of exhalation).
    """
    
    //CMV
    case IMV = """
    What to know: This mode of ventilation was initially created for neonates who had respiratory rates that exceeded 40 bpm. It was also made to address issues with those who were tachypneic on AC.
    \rIMV only provides partial ventilatory support where the patient is allowed to breathe between assisted breaths. However, they are not synchronized to the pre-set rate. Spontaneous breathing helps with auto-PEEP, hyperinflation and muscle atrophy in the chest.
    \rDisadvantages to IMV: This mode can decrease cardiac output and increase the work of breathing.
    \rBottom Line:🎖 A set number of breaths and TV is set for a minute. Patients can breathe freely between each breath, but the ventilator does not make any attempt to synchronize those spontaneous breaths with mandatory breaths as in SIMV. Avoid this mode with those who have LV dysfunction of chest muscle weakness.
    """
    
    //CPAP/PS
    case CPAP =
    """
    What to know: Continuous Positive Airway Pressure, CPAP, allows for a constant pressure to be maintained above atmospheric pressure throughout the respiratory cycle. The patient must be able to generate a  breath to use this mode.
    \rTo start, set the ventilator respiratory rate is adjusted to zero so that no control breaths are delivered during the cycle.
    \rA CPAP of 5 cmH20 is traditionally started to maintain pressure above atmospheric pressure. CPAP can be provided alone or in combination with pressure support ventilation.
    \rDuring spontaneous ventilations, the patient receives a constant CPAP above atmospheric pressure augmented with a preset pressure support ventilation during each spontaneous breath.
    \rBottom Line:🎖 A CPAP 5 cmH20 plus pressure support ventilation of 10 cmH20. CPAP by itself or in combination with pressure support is the primary mode used to promote spontaneous ventilation to wean patients from mechanical ventilation.
    \rRemember, the patient must beable to spontaneusly breath on their own. Placing an apenic patient on CPAP will cause the patient to code.
    """
    case IRV = """
    What to know: Inverse Ratio Ventilation is a subset of pressure control ventilation in which the inspiratory time is extended. IRV's primary indication is in patients with ARDS with refractory hypoxemia or hypercapnia.
    \rA normal I:E ratio is 1:3. However, in IRV, the ratios: 1:1, 2:1, or 3:1 may be used. This lowers peak airway pressures, but increases mean airway pressures.
    \rThe result may improve oxygenation but at the expense of compromising venous return and cardiac output - thus is not clear that this mode of ventilation leads to improved survival.
    \rBottom Line:🎖 IRV is very effective in those with decreased Functional Residual Capacity (FRC), which is the amount of air present in the lungs at the END OF EXPIRATION. Inverse Ratio Ventilation does not allow for a spontaneous breathing patient and requires that the patient is heavily sedated and paralyzed.
    """
    
    // PCV
    case PCV = """
    What to know: Pressure Control Ventilation is a pressure – limiting, time – cycled mode in which a constant pressure is maintained throughout the preset inspiratory time (I – time).
    \rSimply put, the pressure is the endpoint rather than volume. Therefore, the expiratory phase of a breath ends once a preset pressure is reached, regardless of the volume that's delivered.
    \rAs gas flows through the ventilator circuit and into the patient's lungs, the airway pressure rises, resulting in increased alveolar volume. The result is that delivered airway pressure = intrapulmonary pressure; ending the inspiratory phase.
    \rClinicians often change the ventilation mode from volume controlled (CMV, A/C, or SIMV) to pressure control ventilation if adequate ventilation or oxygenation goals are not achieved. Or, if excessive peak airway pressures are required to optimize gas exchange.
    \rPatients with Acute Lung Injury (ALI) or Acute Respiratory Distress Syndrome (ARDS) often require pressure control ventilation. This is primarily due to the difficulties in optimizing ventilation/perfusion goals with conventional volume control modes.
    \rSuggested Settings: Consider switching to pressure control when the PIP approximates 40 cmH20 on 10 PEEP.
    \r• Obtain a baseline ABG.
    \r• In PC maintain the same tidal volume, respiratory rate, FiO2, I: E ratio and PEEP settings as previously set in volume.
    \r• Setting the pressure: There are a few ways to get to the set delta (pressure).
    \r1. The delta (pressure) is obtained taking 75% of the difference between the Ppeak and PEEP, while the patient is on volume control.
    \rFor example, if the Ppeak is 42 and the PEEP is 10, the difference is 32. 75% of 32 is a pressure of 24. Therefore, the initial delta is 24 cmH20.
    \r2. Delta + PEEP should be equal to the Pplat - 2.
    \r3. Delta = Pplat - PEEP
    \rIncrease the delta until the desired exhaled tidal volume (Vte) is obtained.  Adjust based on the ABG results. As compliance changes, so will the tidal volume.
    \rBottom Line:🎖 Pressure is the endpoint rather than the volume. Inspiration ends when the set pressure is met. A preset pressure is set and is delivered constantly throughout inspiration. Breaths are delivered at a preset rate. As compliance changes, tidal volumes change (Compliance = volume/pressure).
    
    """
    // PRVC
    case PRVC = """
    What to know: Pressure Regulated Volume Control is a dual-controlled ventilation mode in which the ventilator tries to achieve the set volume by increasing the pressure flow. It combines the advantages of PCV and AC.
    \rThe breaths can either be controlled or assisted by the ventilator. Constant pressure is applied during inspiration regardless whether the breath is assisted or controlled which results in improved oxygenation due to the decelerating inspiratory flow pattern.
    \r
    \rBottom Line:🎖 PRVC prevents hyopventilation, limits volutrauma/barotrauma, guarantees a tidal volume by increasing the pressure during inspiration and maintains that pressure in the face of decreased pulmonary compliance or resistance.
    \rThe first breath is volume controlled. After that, the ventilator estimates the pressure/volume relationship for each breath and adjusts the level of pressure control.
    \rThe subsequent breaths will be PC at the Pplat. If the PIP reaches the set upper limit - 5 cmH20, then the breath will terminate.
    \rAlthough there's a constant pressure administered during the breath, the pressure adjusts for each breath as compliance increases or decreases.
    \rDisadvantages are that this mode is less suitable with those who have asthma. The tidal volumes are variable and patient effort is intermittent. Finally, the pressure delivered is solely based on the last tidal volume delivered.
    """
    // PSV
    case PSV = """
    \rWhat to know: Pressure Support Ventilation can be used alone or added to SIMV. This mode of ventilation was designed to deliver ventilatory support by augmenting the tidal volume of a patient while maintaining gas exchange, decreasing the work of breathing and increasing overall comfort. It does not provide full ventilatory support (unless pressures are at high levels - see below) and allows the patient to control their respiratory rate, and partially the inspiratory time and tidal volume, thus, allowing the patient to breathe in somewhat of a physiological way.
    \rThe patient needs to be spontaneously breathing on their own in this mode. A negative pressure effort triggers each breath. This mode is standard in weaning the patient off the ventilator by augmenting pressure and decreasing the work of breathing.
    \rWhen the patient triggers a breath, the ventilator delivers a preset inspiratory pressure around 5-20 cmH20, typically. PEEP is applied during exhalation, which overall decreases the patients work of breathing
    
    \rBottom Line:🎖 A preset inspiratory pressure is set which assists the patient's ventilatory effort. Every breath is assisted, and the pressure support is terminated at the end of inspiration. Only a back-up RR rate is set in the event of apnea.
    \rThe patient determines the TV, inspiratory time and respiratory rate. Neither the tidal volume or minute volume is guaranteed. If there's a need to change the TV or MV, the pressure needs to be adjusted. Low-pressure support levels (5-10) usually are sufficient for a patient to overcome any resistance. When pressures are higher (10-40 cmH20) it can function solely as a ventilation mode.
    """
    // SIMV
    case SIMV = """
    What to know: Synchronized Intermittent Mandatory Ventilation (SIMV) combines breaths and supported breaths. The mandatory breaths can either can be volume or pressure controlled, but most common they are volume controlled breaths.
    \rIn this mode, the patient is allowed to breathe spontaneously. The ventilator will deliver a mandatory breath in synch with the patients breathing effort.
    \rThere's usually an assist window that the ventilator sets to look for spontaneous breathing. If no breath is detected, then a mandatory breath will be given.
    \rCaveat: This is all good if the patient is healthy and strong, however, most intubated patients in the ICU are not. Its easier for these patients to breath faster, rather than take deep adequate breaths.
    \rTherefore, the quality of breaths that are taken over the set rate are usually inadequate and lead to a higher work of breathing.
    \rBottom Line:🎖 SIMV will act exactly the same as A/C in paralyzed patients. If the ventilator settings are set a TV  550 and a RR  12, the patient is guaranteed 12 breaths per/min at 550 mL's.
    \rFor any additional breaths over the set rate, the patient will only get whatever volumes they pull and the ventilator will deliver a pressure supported breath for each assisted breath above the pre-set rate.
    """
    
}
