//
//  EKGInformation.swift
//  ACLS
//
//  Created by Jadie Barringer III on 12/21/17.
//  Copyright © 2017 Jadie Barringer III. All rights reserved.
//

import Foundation
import UIKit

enum EKGRhythm: String {
    case SVT = "SVT"
    case Vfib = "VentricularFibrillation"
    case Vtach = "VTach"
    case SinusTach = "SinusTachycardia"
    case SinusBrady = "SinusBradycardia"
    case Torsades = "Polymorphic_VTach"
    case NormalSinus = "NormalSinus"
    case Afib = "AtrialFib"
    case Asystole = "Asystole"
    case Aflutter = "Aflutter"
    case ThirdDegreeHeartBlock = "3rdDegreeHB"
    case SecondDegreeTypeII = "2ndDegreeTypeII"
    case Wenkeback = "2ndDegreeTypeI ( Wenkeback)"
    case PSVT = "SVT1"
    
}

//struct svtRandomStrips {
//    let SVtnames = ["SVT", "SVT1"]
//    
//    let svtRandom = SVtnames[Int(arc4random_uniform(UInt32(SVtnames.count)))]
//
//}

//MARK: /// ENUM for Rhythm descriptons

enum RhythmDescription: String {
    
    
    case Afib = "Rate: 100 - 160\n\nRhythm: Irregularly irregular\n\nP-Wave: Fibrillatory/Chaotic\n\nP-R Interval: Not Measurable\n\nQRS: Usually normal\n\nAtrial Fibrillation is the most common sustained arrhythmia characterised by disorganised atrial electrical activity and contraction.\n\nClinical manifestations include: Irregular ventricular responses, no evidence of organised atrial activity, irregularly irregular rhythm, no discernible P-waves, absence of an isoelectric baseline, fibrillatory waves may mimic P-waves leading to misdiagnosis.\n\nEtiology: Ischemic heart diseases, digoxin toxicity, mitral and tricuspid valve disease, pulmonary embolism, hyperthyroidism."
    
    case Asystole = "Rate: ~ Flatline\n\nRhythm: Regular\n\nP-Wave: None\n\nP-R Interval: None\n\nQRS: None\n\nAsystole is the complete cessation of all ventricular contractions. Asystole is a cardiac arrest rhythm with no discernible electrical activity. It should not be confused with compensatory pauses. It is a flatline rhythm. P-Waves and QRS complexes are not present- the heart is not functioning.\n\nAn asystolic rhythm is a fatal condition that produces no cardiac output and requires immediate Advanced Cardiac Life Support.\n\nAsystole is not a shockable rhythm."
    
    case Aflutter = "Rate: ~ 110\n\nRhythm: Regular\n\nP-Wave: Saw-tooth, 300/min\n\nP-R Interval: Not measurable\n\nQRS: Prolonged\n\nAtrial flutter is a certain type of supraventricular tachycardia that is usually caused by a reentry circuit in the right atrium. These reentry circuits can either be anticlockwise, which is found in approximately 90 % of all cases, or clockwise, which is less common.\n\nThe reentry circuit usually corresponds to the size of the right atrium, resulting In their atrial rate around 300 bpm. The average ventricular rate during atrial flutter is approximately 150 bpm with an AV conduction ratio 2:1. 3:1 blocks ~ 100 bpm; and 4:1 ~ 75 bpm."
    
  
    case SVT = "Rate: ~ 160 - 280 bpm \n\nRhythm: Regular\n\nP-Wave: Often hidden\n\nP-R Interval: Variable\n\nQRS: Normal or Prolonged\n\nSupraventricular tachycardia is a tachydysrhythmia that is descibed to arise above the His Bundle.  SVT has a narrow QRS complex & regular rhythm unless an aberrant conduction is present.\n\nTypically, SVT is non-life threatening, however, when rates excees 150 bpm, SVT can significantly reduce ventricular filling and pre-load. The reduced filling time results in a decreased cardiac output during systole. The result of the marked decreased cardiac output is hypotension."
    
    case PSVT =  "Rate: ~ 160 - 280 bpm \n\nRhythm: Regular\n\nP-Wave: Often hidden\n\nP-R Interval: Variable\n\nQRS: Normal or Prolonged\n\nParoxysmal Supraventricular tachycardia is a tachydysrhythmia that is descibed to arise above the His Bundle."
    
    
    case SinusTach = "Rate: > 100\n\nRhythm: Regular\n\nP-Wave: Visible, preceeds every QRS\n\nP-R Interval: Normal\n\nQRS: Normal\n\nSinus Tachycardia is defined as a sinus rhythm with a ventricular rate exceeding 100 beats/min. The impulse arises from the SA node, and depending on the age of the patient, the rate can vary. Often asymptomatic, patients with primary heart disease can experience symptoms such as chest pain, increased myocardial oxygen demand and overall reduce coronary blood flow. \n\nEtiology: Exercise, hypovolemia, hypotension, fever, hypoxia, CHF, MI, PE, stimulants such as caffeine, drugs. Beta-agonists, sympathomimetics."
    
    case SinusBrady = "Rate: < 60\n\nRhythm: Regular\n\nP-Wave: Visible, preceeds every QRS\n\nP-R Interval: Slightly prolonged\n\nQRS: Normal 1:1\n\nSinus Bradycardia is characterized by a ventricular rate less than 60 beats per min (for adults) while at rest. Some people, such as athletes, the elderly or well-conditioned persons can exhibit bradycardia.\n\nAs long as they're asymptomatic in the absence of any cardiac diseases, this is considered relatively common. At times, sinus bradycardia may be indistinguishable from 2nd° type II AV blocks.\n\nEtiology: Sick Sinus Syndrome, Increased vagal tone, Drugs, Hypoxia, AMI, Increased ICP, Electrolyte abnormalities, Hypothermia, Hypothyroidism.\n\nMedications such as Beta blockers, Calcium channel blockers, Amiodarone, Opiates and Benzodiazepines will also result in bradycardia."
    
    
    case Torsades = "Rate: ~ 200-250\n\nRhythm: Irregular\n\nP-Wave: None\n\nP-R Interval: None \n\nQRS: Wide\n\nTorsades de pointes (TdP) a.k.a polymorphic ventricular tachycardia is a form of ventricular tachycardia in which the QRS complexes varies in amplitude, axis, and duration.\n\nThe QRS complexes “twist” around the isoelectric line hence the name (twisting of the points). The onset of torsades may be attributed to a prolonged QT which may be associated to hypokalemia, hypomagnesemia, drugs/medications, MI, prolonged QT syndrome,  or be precipitated by an R on T phenomenon."
    
    case NormalSinus = "Rate: 60 - 100\n\nRhythm: Regular\n\nP-Wave: Visible, preceeds every QRS\n\nP-R Interval: Normal\n\nQRS: Normal\n\nA Normal Sinus Rhythm is the default heart rhythm that represents the normal beating of the heart with a ventricular rate between 60-100/min. Pacemaking impulses arise from the sino-atrial (SA) node and are transmitted to the ventricles via the AV-node and His-Purkinje system which result in a regular, narrow-complex heart rhythm- called a Normal Sinus Rhythm."
   
   
    case ThirdDegreeHeartBlock = "Rate: 40\n\nRhythm: Regular\n\nP-Wave: 2:1 or 3:1\n\nP-R Interval: Variable\n\nQRS: Prolonged\n\nDuring a complete heart block, there was complete A/V disassociation. The atria and ventricles contract independently of each other. None of the supraventricular impulses conduct to the ventricles.\n\nThe AV node takes over as the primary pacemaker, and the rhythm is maintained by usually a junctional or ventricular escape rhythm. The ventricular rate is often around 40 bpm, and atrial rates can exceed 100 bpm. Patients with complete heart block are high risk for sudden cardiac death."
    
    case SecondDegreeTypeII = "Rate: Usually Normal\n\nRhythm: Regular\n\nP-Wave: 2:1 or 3:1\n\nP-R Interval: Variable\n\nQRS: Normal or Prolonged\n\nA 2nd° AV type II block is usually due to a conduction failure below the AV node – typically in the His-Purkinje system likely due to structural damage, for example, infarction, necrosis, or fibrosis of the conducting system. What differentiates 2nd° type II from 2nd° type I is that the PR interval remains constant during conducted beats and atrial contractions are not regularly followed by ventricular contractions.\n\nThe R-R interval between the drop beats usually remains constant. Since most of the conduction block is located distal to the bundle of his, you'll notice broad QRS complexes in patients typically have a pre-existing left bundle branch block or bifascicular block. 2nd° type II AV block is more concerning and has a higher probability of progressing into a 3rd° heart block or sever bradycardia."
    
    case Vfib = "Rate: Indeterminate\n\nRhythm: Chaotic\n\nP-Wave: None\n\nP-R Interval: None\n\nQRS: Wide & Indistinct\n\nVentricular Fibrillarion a.k.a V-Fib, is identified by a chaotic and fibrillatory complex and is considered the essential shockable rhythm. There's no electrical uniformity of the ventricles. This rapid and irregular electrical activity renders the ventricles inadequate- not allowing them to contract in a synchronized manner.\n\nTherefore, the complexes are obscure and indistinguishable ending a direct loss of cardiac output. V-Fib is a pulseless rhythm. The lack of organized depolarization inhibits coordinated ventricular contractions- central pulses will be absent.\n\nProlonged V-Fib results in decreasing QRS waveform amplitude, from coarse VF to fine VF and ultimately deteriorating into asystole due to the progressive decrease of myocardial energy stores. Unless an immediate shock and ALCS protocol is initiated, V-Fib is perpetually fatal."
    
    case Vtach = "Rate: 100 - 220\n\nRhythm: Regular\n\nP-Wave: Not present QRS\n\nP-R Interval: None\n\nQRS: Normal\n\nVentricular Tachycardia (VT) is a wide complex tachycardia - a QRS duration beyond 120 milliseconds — originating in the ventricles at a rate of greater than 100 beats per minute. There can be several variations of VT — the most being Monomorphic VT.\n\nVentricular tachycardia can be classified as sustained or non-sustained VT, or NSVT. Sustained VT is any ventricular tachycardia that lasts for more than 30 seconds or is symptomatic. Non-sustained VT lasts for less than 30 seconds and is typically asymptomatic, origionating in scarred or damaged myocardium.\n\nTypically, Ventricular tachycardia can be difficult to distinguish from supraventricular tachycardia, or SVT, with aberrancy.\n\nThe Brugada Criteria is most commonly used to differentiate between these two entities.\n\n1. Is there concordance present in the precordial leads (leads V1-V6)? Simply put, are all of the QRS complexes completely upright, or completely downward in the precordial leads?\n\nIf yes, then VT is the diagnosis.\n\n2. Is the R to S interval > 100 ms in any one precordial lead?\n\nIf yes, the diagnosis is VT.\n\n3. Is AV dissociation present? (This is difficult to see due to the rapid rate of the QRS.\n\nIf yes, the diagnosis is VT.\n\n4. Examine the morphology of the QRS complex to see if it meets the specific criteria for VT, as below.\n\nIf upward in lead V1 (RBBB pattern), then VT is present in the following situations:\n\nI.A monophasic R or biphasic qR complex in V1.\n\nII. If an RSR' pattern (“bunny-ear”) is present in V1, with the R peak being higher in amplitude than the R’ peak, then VT is present.\n\nIII. An rS complex in lead V6 favors VT.\n\n\nIf downward in lead V1 (LBBB pattern), then VT is present in the following situations:\n\nI. The presence of any Q or QS wave in lead V6 favors VT.\n\nII. A wide R wave in lead V1 or V2 of 40 ms or more favors VT.\n\nIII. Slurred or notched downstroke of the S wave in V1 or V2 favors VT.\n\nIV. Duration of onset of the QRS complex to peak of QS or S wave > 60 ms favors VT."
    
    
    case Wenkeback = "Rate: 60 - 100\n\nRhythm: Regular\n\nP-Wave: 2:1 or 3:1\n\nP-R Interval: Variable\n\nQRS: Normal or Prolonged\n\nDuring a 2nd° type I AV block, some atrial impulses failed to reach the ventricles. You'll appreciate progressive prolongation of the PR interval which subsequently culminates into a nonconductive P-wave. The R-R interval progressively shortens with each beat of the cardiac cycle.\n\nThe greatest increase in the PR interval is typically between the first and second beats of the cardiac cycle. 2nd° type I AV block is typically a benign rhythm that has a low probability of progressing into a 3rd° heart block."
    
}

/// ENUM for Medication considerations

enum Medications: String {
    
    case Afib = "If stable, consider Calcium Channel Blockers / Beta Blockers.\n\nSynchronized Cardioversion warranted if the patient is unstable. Start at 50 J ⚡️.\n\nConsider sedation if systolic blood pressure permits."
    
    case Asystole = "AHA recommends high quality CPR. Epinephrine 1 mg q 3-5 min.\n\nConsider the reversible causes such as:\n\nHypoxia, Hypovolemia, Hypo/Hyperkalemia, Hypothermia, Hydrogen ion acidosis.\n\nTension pneumothorax, Tamponade (cardiac), Toxins, Thrombosis (pulmonary, coronary).  "
    
    case Aflutter = " If stable, consider Calcium Channel Blockers / Beta Blockers.\n\nSynchronized Cardioversion warranted if the patient is unstable. Start at 50 J ⚡️.\n\nConsider sedation if systolic blood pressure permits."
    
   
    case NormalSinus = "NSR is a completely normal physiological rhythm.\n\nNo medications to consider. "
    
    
    case SinusTach = "Sinus tachycardia is rarely a primary cardiac arrhythmia and almost always caused by one of the above conditions. Consider treating the underlying cause."
   
    
    case SinusBrady = "Patients rarely require treatment. Symptomatic patients usually respond to atropine.\n\nIf atropine is ineffective, the AHA recommends IV infusions of Dopamine (2 - 20 mcg/kg/min) or Epinephrine (2 - 10 mcg/min) are an equally effective alternative.\n\nIf the patient becomes hemodynamically unstable, transcutaneous pacing (TCP) is warranted."
    
    case SVT = "If hemodynamically stable, consider vagal maneuvers initially.\n\nAdenosine 6mg, repeat once at 12 mg. Amiodarone 150 mg IVP over 10 min can also be considered .\n\nIf hemodynamically unstable, consider synchronized cardioversion starting at 50 J ⚡️"
    
    
    case SecondDegreeTypeII = "Ultimately permanent pacemaker insertion is warranted.\n\nIf atropine is ineffective, IV infusions of Dopamine (2 - 20 mcg/kg/min) and Epinephrine (2 - 10 mcg/min) are an equally effective alternative.\n\nIf the patient becomes hemodynamically unstable, transcutaneous pacing (TCP) is warranted."
    
    case Torsades = "Immediated defibrillation at 120-200 J ⚡️.\n\nEpinephrine 1 mg, Amiodarone 300 mg (Initial dose) and a subsequent dose of 150 mg maybe necessary.\n\nOnly 2 doses of Amiodarone given- Epinephrine 1 mg q 3-5 min to follow. Correct underlying causes such as medications or electrolytes abnormalities."
    
    case ThirdDegreeHeartBlock = "Transcutaneous pacing (TCP)⚡️ or permanent pacemaker insertion are almost always required.\n\nTreatment should be focused on the patient stability to determine the need for temporary pacing.\n\nAtropine typically will not respond to complete heart blocks.\n\nIf the block is in the His Bundle, atropine causes the atrial rate to increase and heightens the degree of the block, thus slowing the ventricular rate even more."
    
    case Vfib = "Immediate defibrillation at 120 - 200 J ⚡️ is the key to a successful outcome.\n\nHigh quality CPR.  Epinephrine 1 mg q 3-5 min.\n\nAmiodarone 300 mg IVP. One subsequent dose of 150 mg IVP can also be administered."
    
    case Vtach = "If stable with a pulse, Amiodarone 150 mg IVP over 10 min. Also, the AHA recommends Procainamide 20 - 50 mg IV or Sotalol 100 mg (1.5 mg/kg) over 5 min, can be given.\n\nIf unstable, the AHA recommends synchronized cardioversion starting at 100 J ⚡️. If pulseless, immediate defibrillation at 120 - 200 J ⚡️ is the key to a successful outcome.\n\nHigh quality CPR. Epinephrine 1 mg q 3 - 5 min, and Amiodarone 300 mg IVP and one subsequent dose of 150 mg IVP can also be administered."
    
    case Wenkeback = "Rarely patients require treatment. Symptomatic patients usually respond to atropine.\n\nIf atropine is ineffective, IV infusions of Dopamine (2 - 20 mcg/kg/min) and Epinephrine (2 - 10 mcg/min) are an equally effective alternative.\n\nIf the patient becomes hemodynamically unstable, transcutaneous pacing (TCP) is warranted."
    
}

