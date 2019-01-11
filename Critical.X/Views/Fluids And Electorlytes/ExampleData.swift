//
//  ExampleData.swift
//  ios-swift-collapsible-table-section
//
//  Created by Yong Su on 8/1/17.
//  Copyright © 2017 Yong Su. All rights reserved.
//

import Foundation

//
// MARK: - Section Data Structure
//
public struct Item {
    var name: String
    var detail: String
    
    public init(name: String, detail: String) {
        self.name = name
        self.detail = detail
    }
}

public struct Section {
    var name: String
    var items: [Item]
    var collapsed: Bool
    
    public init(name: String, items: [Item], collapsed: Bool = false) {
        self.name = name
        self.items = items
        self.collapsed = collapsed
    }
}

public var sectionsData: [Section] = [
    Section(name: "Blood Types", items: [
        
        Item(name: "Overview", detail: "Blood types are identified by antigens that are on the surface of the RBC's. The major types of antigens are grouped by the types seen below: A, B, AB, O- and Rh factor (+) or (-). Cross-matching is performed to determine the compatibility."),
        
        Item(name: "ABO-A", detail: "Has the 'A' antigen and antibodies in the plasma against the 'B' antigen."),
        
        Item(name: "ABO-B", detail: "Has the 'B' antigen and antibodies in the plasma against the 'A' antigen."),
        
        Item(name: "ABO- AB", detail: "Has both the 'A' and 'B' antigens on the RBC. No antibodies in the plasma against the 'A' and 'B' antigens."),
        
        Item(name: "ABO - O", detail: "Has neither of the 'A' and 'B' antigens/antibodies in the plasma against the 'A' and 'B' antigens."),
        
        Item(name: "Key Point", detail: "Red Blood Cells may also have the Rh antigen called the 'Rh factor'. Rh positive(+) means that the Rh antigen is present on the RBC. Rh negative (-) means that the antigen is not present."),
        
        ]),// End of the section
    Section(name: "Crystalloids", items: [
        
        Item(name: "D5W (5% Dextrose in Water)", detail: "Indications:\nUsed as a KVO maintenance fluid. Provides water with a small amount of glucose. Ineffective for expanding the plasma volume.\n\nAdvantages:\nProvides free water when the serum Na and CL levels are elevated.\n\nDisadvantages:\nExcess D5W can dilute electrolytes and plasma proteins resulting in hyponatremia and cellular edema.\n\nComposition:\nOsmolarity: 252 mOsm/L; 50g Dextrose/L; 200 calories/L."),
        
        Item(name: "0.45% NS (0.45% Hypotonic Saline)", detail: "Indications:\nFluid volume replacement. Treatment of hypertonic extracellular dehydration or hypovolemia in cases where the intake of fluids and electrolytes by normal routes is not possible.\n\nAdvantages:\nRehydration or the use of maintenance fluids without excessive hypernatremia or hyperchloremia.\n\nDisadvantages:\nInterstitial and intracellular edema could result from hyponatremia.\n\nComposition:\nSodium 77 mEq/L; Chloride 77 mEq/L; Osmolality: 154 mOsm/L."),
        
        Item(name: "0.9% NS (0.9% Normal Saline)", detail: "Indications:\nReplacement, Treatment of metabolic alkalosis, A priming fluid for hemodialysis, To begin and end blood transfusions. Small volumes of 0.9% NaCl (preservative-free or bacteriostatic) are used to reconstitute or dilute other medications.\n\nAdvantages:\nResembles extracellular fluid. Reduces edema by osmotic effects. Helps maintain water distribution, fluid and electrolyte balance, acid-base equilibrium, and osmotic pressure.\n\nDisadvantages:\nDilutes RBC's and plasma proteins. Hyperchloremic Metabolic Acidosis.\n\nComposition:\nOsmolarity: 308 mOsm/L; Na 154 mEq/L; Chloride 154 mEq/L."),
        
        Item(name: "3% Saline (3% Hypertonic Saline)", detail: "Indications:\nTo increase the serum sodium and plasma volume. Moderate inflammatory response in patients who are in shock.\n\nAdvantages:\nIt takes less fluid to resuscitate. Improves cardiac output and blood flow. It is as effective as mannitol in patients with increased intracranial pressure.\n\nDisadvantages:\nIf administered too fast, the patient could become hypokalemic and the Na could increase approximately 2-3 mmol/L. Seizures and dysrhythmias could result.\n\nComposition:\nOsmolarity: 1026 mOsm/L; Na 512 mEq/L; Chloride 513 mEq/L."),
        
        Item(name: "Ringers Lactate", detail: "Indications:\nFluid volume replacement for hemorrhagic shock. Contains the same components as the interstitial fluid- which tends to shift to the vasculature during hemorrhage.\n\nAdvantages:\nPotassium and calcium promote myocardial contractility. The fluid is isotonic. Electrolytes are balanced and lactate is converted to glucose in carbonic acid.\n\nDisadvantages:\nDilutes the plasma proteins in red blood cells.\n\nComposition:\nSodium  130 mEq/L, Chloride: 109 mEq/L, Potassium: 4 mEq/L, Calcium: 3 mEq/L, Lactate: 27 mEq/L, pH: 6.5, Osmolarity: 275 mOsm/liter."),
        
        
        ]),// End of the section
    Section(name: "Colloids", items: [
        
        Item(name: "Albumin 5%", detail: "Overview:\nAlbumin is responsible for 70-80% of the colloid pressure of normal plasma, thus making it useful in regulating the volume of circulatory blood. Albumin stabilizes circulating blood volume and is a carrier of hormones, enzymes, medicinal products, and toxins.\n\nIndication:\nRestoration and maintenance of circulating blood volume where volume deficiency has been demonstrated, and use of a colloid is appropriate. The choice of albumin rather than artificial colloid will depend on the clinical situation of the individual patient, based on official recommendations.\n\nDisadvantages:\nAlbumin should be used with caution in conditions where hypervolemia and its consequences or hemodilution could represent a special risk for the patient.\n\nComposition:\nAlbumin: 50 g/L in normal saline – Osmolality: 300 mOsm/L"),
        
        Item(name: "Albumin 25%", detail: "Overview:\nAlbumin is responsible for 70-80% of the colloid pressure of normal plasma, thus making it useful in regulating the volume of circulatory blood. Albumin stabilizes circulating blood volume and is a carrier of hormones, enzymes, medicinal products, and toxins. Albumin (Human) 25% will draw approximately 3.5 times its volume of additional fluid into the circulation within 15 minutes if the recipient is adequately hydrated. The additional fluid will reduce the hemoconcentration and decrease blood viscosity. The degree and duration of volume expansion depend upon the initial blood volume. In patients with diminished blood volume, the effect of infused Albumin (Human) may persist many hours.\n\nIndications:\nThe two main indications for the use of Albumin (Human) 25% - are a plasma or blood volume deficit and the oncotic deficit resulting from hypoproteinemia.\n\nAdvantages:\nRarely will patients have anaphylactic reactions or transmissions of hepatitis.\n\nDisadvantages:\nVolume overload - drip rate should be less than 4 mL/min. Albumin should be used with caution in conditions where hypervolemia and its consequences or hemodilution could represent a special risk for the patient.\n\nComposition:Albumin: 240 g/L in NS. Osmolality: 1500 mOsm/L."),
        
        Item(name: "Dextran 40 (Rhemacrodex)", detail: "Overview:\nDextran is a hypertonic solution, plasma volume expander; nonprotein colloid.\n\nIndications:\nIndicated for shock.\n\nAdvantages:\nThe volume will expand 100% and prevent microemboli by decreasing platelets from sticking together. Less allergenic than dextran – 70.\n\nDisadvantages:\nAnticoagulation properties – osmotic net process, 70% excreted in the urine and alters specific gravity.\n\nComposition: Synthetic colloid with glucose polysaccharides in normal saline or D5W."),
        
        
        Item(name: "Hespan", detail: "Overview:\nHetastarch (hydroxyethyl) is a plasma volume expander derived from natural sources of starch. It works by restoring blood plasma lost through severe bleeding. Hetastarch also contains electrolytes (sodium, calcium potassium, magnesium) which are minerals essential for many functions in the body, including the brain and nervous system, heartbeat, and fluid balance.  \n\nIndications:\nHespan is indicated in the treatment of hypovolemia when plasma volume expansion is desired. It is not a substitute for blood or plasma.\n\nAdvantages:\nMacromolecule that expands the volume 150% lasting 424 – 36 hours. There is a lower risk for allergic reaction and dextran or albumin.\n\nDisadvantages:\nIncrease in serum amylase, glucose decreases factor VII. Prolonging the PT – PTT and decreasing platelets. Dilution of red blood cells.\n\nComposition:\nSodium :154 mEq per liter, Chloride: 154 mg/L, Osmolality: 310 mOsm per liter"),
        
        Item(name: "Plasmanate (Plasma Protein Factor)", detail: "Indications:\nIncreases osmotic pressure in patients who are in shock due to burns, crushing injuries where there's a loss of plasma.\n\nAdvantages:\nCompatible with whole blood or PRBC's. Very low risk for allergic reactions. Adequate replacement for human plasma as it can increase blood volume for up to 48 hrs. Useful in children who in shock due to infection or dehydration.\n\nDisadvantages:\nAllergic reactions may cause hypotension if greater than 10mL/ min is given during surgery. Can cause flushing, urticaria, back pain, nausea and headache. Coronary bypass patients, those who are severely anemic, CHF, or hypervolemic.\n\nComposition:\n5% human plasma protein in Normal Saline, Albumin 44 g/L. Osmolality - 290 mOsm/L. Note: Plasmanate is made from human plasma and the patient can be exposed to infectious diseass or viruses."),
        
        ]), // End of the section
    
    Section(name: "Blood Products", items: [
        
        Item(name: "Cryoprecipitate", detail: "Overview:\nCryoprecipitate  is a frozen blood product prepared from the plasma. It contains 100 UI of factor VII, and 250 mg of fibrinogen per 15 ML's a unit.  \n\nIndications:\nHemophilia A, Von Willebrand disease, Fibrinogen deficiency and also factor VIII and XIII deficiencies.  \n\nDosage:\nUsually given 10 – 20 units. Adult: 10 Units IV, Peds: 1 Unit/5kg.\n\nVolume With Filter:\n10 mL.\n\nComposition:\nRaises fibrinogen 75 mg/mL. Von Willebrand factor. Cryoprecipitate contains a small volume of plasma and no red blood cells. Plasma compatibility is preferred, but not required."),
        
        Item(name: "Fresh Frozen Plasma", detail: "Overview:\nAfter blood donation, the liquid portion of the blood is extracted and frozen. This is what we call fresh frozen plasma (FFP). FFP is preserved for patients who have bleeding disorders.\n\nIndications:\nFFP is used to replace clotting factors only. It's not used for volume expansion. FFP is given after single or multiple units of packed red blood cells to prevent coagulopathy - Bleeding diseases of unknown causes – Coumadin overdose with severe bleeding.\n\nDosage:\n1 – 2 units for every 1 to 2 units of packed red blood cells.\n\nVolume with blood filter:\n150-200 mL\n\nComposition:\nPlasma contains no red blood cells, crossmatching is not required. Use within 24 hours after the plasma is thawed."),
        
        Item(name: "Packed Red Blood Cells", detail: "Overview:\nPacked red blood cells are a collection of red blood cells. PRBC's are given to patients to correct the low blood levels associated with anemia. Remember one unit of packed red blood cells should increase the hemoglobin 1 g/dL and hematocrit by 3%.\n\nIndications:\nAcute anemia used to increase the oxygen-carrying capability without the need for volume expanders. Acute or chronic blood loss. PRBC's are usually given with normal saline and FFP for hemorrhagic shock.\n\nDosage:\n1 Unit.\n\nVolume with blood filter:\n250-450 mL/Unit.\n\nComposition:\n80% of the plasma is removed. It lacks clotting factors in platelets. Raises the hemoglobin by one gram/dL and hematocrit by 3%"),
        
        Item(name: "Platelets", detail: "Overview:\nPlatelets (thrombocytes) play a vital role in hemostasis (which is the formation of blood clots). Platelets are usually indicated for patients with a low platelet count also known as thrombocytopenia.\n\nIndications:\nPlatelets are used to control or prevent bleeding. Platelets are used prophylactically for platelet counts less than 10,000 to 20,000. Do not transfuse platelets to patients with immune thrombocytopenic purpura unless it's life-threatening – or used with massive blood transfusions.\n\nDosage:\nAdults – six – 10 units. Pediatrics: 5 mg/kg.\n\nVolume with blood filter:\n50 mL/Unit.\n\nComposition:\nOne unit represents that the platelets were removed from one unit of blood."),
        
        Item(name: "Washed Red Blood Cells", detail: "Overview:\nWashed red blood cells are used for recurrent severe allergic transfusion reactions such as anaphylaxis or severe urticarial reactions not prevented by pre-transfusion antihistamine and corticosteroid administration. They've have had most of the plasma, platelets and white blood cells removed and replaced with an electrolyte solution. They are used in people with IgA deficiency who need a blood transfusion. They can only be kept for up to a day.\n\nIndications:\nPrevious febrile transfusion reactions. Patients with multiple transfusions.\n\nDosage:\nWashed RBC units may not provide full 1 g/dL increase in hemoglobin per unit because 10-20% of the RBCs are lost in the washing process. Platelet products may lose up to 33% of the platelets in the washing process. The platelets functionality may also be altered providing a suboptimal response.\n\nVolume with blood filter:\n300 mL.\n\nComposition:\nAll of the WBC's have been removed."),
        ])// End of the section
]
