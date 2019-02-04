//
//  Data_Peds.swift
//  PassingCalculationData
//
//  Created by Jadie Barringer III on 12/6/17.
//  Copyright © 2017 Jadie Barringer III. All rights reserved.
//

import Foundation
import UIKit


public var weightEntered: Double?


class CriticalPediatrics {
    
    enum PediatricData {
        
        /// 0-2 kg
        enum Premature: String {
            
            // Vital Signs
            case Years = "Premature"
            case SystolicBP = "55-75 "
            case DiastolicBP = "35-45"
            case RespRate = "40-70"
            case Pulse = "110-170"
            case Hypotensive = "< 50"
            
            case CentralLineFemoral = "7 cm @ teeth/gums"
            case ETTSizeCuffed = "2.0 mm "
            case ETTSizeUnCuffed = "2.5 mm"
            case OralAirway = "40 mm"
            case SuctionCathSize = "< 8 (f)"
            case NGTubeSize = "< 5-8 (f)"
            case FoleyCathSize = " < 5(f)"
            case ChestTubeSize = "< 10 (f)"
            case CentralLine = "3(f)-8 cm"
            case Laryngescope = "0-1 Miller"
            
            //Ventilator Settings
            case PEEP = "3-5"
            case RespiratoryVentRate = "40-50/min"
            case TidalVolume = "Variable"
            case Mode = "Pressure"
            case Itime = "0.3-0.4"
            case PIP = "18-22"
            
            //Takes the string of the enum declared in the case above and exectues the String called "the raw.value"
            func execute() ->String { return self.rawValue }
            
            
            
        }
        
        /// 3-5 kg
        enum Term: String {
            
            case Years = "Term Newborn"
            case SystolicBP = "55-75 "
            case DiastolicBP = "35-45"
            case RespRate = "40-70"
            case Pulse = "110-170"
            case Hypotensive = "< 60"
            
            case OralAirway = "< 50 mm"
            case CentralLineFemoral = "9-10 cm @ teeth/gums"
            case ETTSizeCuffed = "2.5 mm"
            case ETTSizeUnCuffed = "3.0 mm"
            case SuctionCathSize = "6-8F"
            case NGTubeSize = "< 5-8F"
            case FoleyCathSize = "5-8F"
            case ChestTubeSize = "10-12F"
            case CentralLine = "3F/8 cm"
            case Laryngescope = "0-1 Miller"
            
            case PEEP = "3-5"
            case RespiratoryVentRate = "40-50/min"
            case TidalVolume = "Variable"
            case Mode = "Pressure"
            case Itime = "0.3-0.4"
            case PIP = "18-22"
            
            //Takes the string of the enum declared in the case above and exectues the String called "the raw.value"
            func execute() ->String { return self.rawValue }
            
        }
        
        /// 6-7 kg
        enum SmallInfant: String {
            
            case Years = "Term Newborn"
            case BloodPressure = "60 - 67"
            case Pulse = "120 - 160"
            case RespRate = "30 - 45 Breaths"
            case Hypotensive = "< 70"
            
            case OralAirway = "< 50 mm"
            case CentralLineFemoral = "9-10 cm @ teeth/gums"
            case ETTSizeCuffed = "3.0 mm"
            case ETTSizeUnCuffed = "3.5 mm"
            case SuctionCathSize = "< 8F"
            case NGTubeSize = "< 5F"
            case FoleyCathSize = " < 5F"
            case ChestTubeSize = "<  10F"
            
            case PEEP = "3-5 cmH20"
            case RespiratoryVentRate = "15 - 20 /min"
            
            //Takes the string of the enum declared in the case above and exectues the String called "the raw.value"
            func executeInfoDescription() ->String { return self.rawValue }
            
            
        }
        
        /// 8-9 kg
        enum Infant: String {
            
            case Years = "Child"
            case BloodPressure = "70 - 100"
            case Pulse = "80 - 140"
            case RespRate = "20 - 30 Breaths"
            case Hypotensive = "< 70"
            
            case OralAirway = "< 50 mm"
            case CentralLineFemoral = "9-10 cm @ teeth/gums"
            case ETTSizeCuffed = "3.0 mm"
            case ETTSizeUnCuffed = "3.5 mm"
            case SuctionCathSize = "< 8F"
            case NGTubeSize = "< 5F"
            case FoleyCathSize = " < 5F"
            case ChestTubeSize = "<  10F"
            
            case PEEP = "3-5 cmH20"
            case RespiratoryVentRate = "15 - 20 /min"
            
            //Takes the string of the enum declared in the case above and exectues the String called "the raw.value"
            func executeInfoDescription() ->String { return self.rawValue }
            
            
            
            
        }
        
        /// 10-11 kg
        enum Toddler: String {
            
            case Years = "Toddler"
            case BloodPressure = "80 - 110  "
            case Pulse = "80 - 130"
            case RespRate = "20 - 30 Breaths"
            case Hypotensive = "< 74"
            
            case OralAirway = "< 50 mm"
            case CentralLineFemoral = "9-10 cm @ teeth/gums"
            case ETTSizeCuffed = "3.0 mm"
            case ETTSizeUnCuffed = "3.5 mm"
            case SuctionCathSize = "< 8F"
            case NGTubeSize = "< 5F"
            case FoleyCathSize = " < 5F"
            case ChestTubeSize = "<  10F"
            
            case PEEP = "3-5 cmH20"
            case RespiratoryVentRate = "15 - 20 /min"
            
            //Takes the string of the enum declared in the case above and exectues the String called "the raw.value"
            func executeInfoDescription() ->String { return self.rawValue }
            
            
        }
        
        /// 12-14 kg
        enum SmallChild: String {
            
            case Years = "Small Child"
            case BloodPressure = "80 - 110  "
            case Pulse = "80 - 130"
            case RespRate = "20 - 30 Breaths"
            case Hypotensive = "< 78"
            
            case OralAirway = "< 50 mm"
            case CentralLineFemoral = "9-10 "
            case ETTSizeCuffed = "3.5"
            case ETTSizeUnCuffed = "5.0"
            case SuctionCathSize = "8F"
            case NGTubeSize = "8 - 10F"
            case FoleyCathSize = "8 F"
            case ChestTubeSize = "16 - 20F"
            
            case PEEP = "3-5 cmH20"
            case RespiratoryVentRate = "15 - 20 /min"
            
            //Takes the string of the enum declared in the case above and exectues the String called "the raw.value"
            func executeInfoDescription() ->String { return self.rawValue }
            
            
        }
        
        
        /// 15-18 kg
        enum Child_15_18: String {
            
            case Years = "Child"
            case BloodPressure = "80 - 110  "
            case Pulse = "80 - 120"
            case RespRate = "20 - 30 Breaths"
            case Hypotensive = "< 82"
            
            case OralAirway = "< 50 mm"
            case CentralLineFemoral = "9-10 cm @ teeth/gums"
            case ETTSizeCuffed = "3.5 Uncuffed, 3.0 Cuffed"
            case ETTSizeUnCuffed = ""
            case SuctionCathSize = "< 8F"
            case NGTubeSize = "< 5F"
            case FoleyCathSize = " < 5F"
            case ChestTubeSize = "<  10F"
            
            case PEEP = "3-5 cmH20"
            case RespiratoryVentRate = "15 - 20 /min"
            
            //Takes the string of the enum declared in the case above and exectues the String called "the raw.value"
            func executeInfoDescription() ->String { return self.rawValue }
            
            
        }
        
        /// 19-23 kg
        enum Child_19_23: String {
            
            case Years = "Child"
            case BloodPressure = "80 - 110  "
            case Pulse = "80 - 120"
            case RespRate = "20 - 30 Breaths"
            case Hypotensive = "< 86"
            
            case OralAirway = "< 50 mm"
            case CentralLineFemoral = "9-10 cm @ teeth/gums"
            case ETTSizeCuffed = "3.5 Uncuffed, 3.0 Cuffed"
            case ETTSizeUnCuffed = ""
            case SuctionCathSize = "< 8F"
            case NGTubeSize = "< 5F"
            case FoleyCathSize = " < 5F"
            case ChestTubeSize = "<  10F"
            
            case PEEP = "3-5 cmH20"
            case RespiratoryVentRate = "15 - 20 /min"
            
            //Takes the string of the enum declared in the case above and exectues the String called "the raw.value"
            func executeInfoDescription() ->String { return self.rawValue }
            
            
        }
        
        /// 24-29 kg
        enum LargeChild: String {
            
            case Years = "Large Child"
            case BloodPressure = "80 - 120  "
            case Pulse = "70 - 110"
            case RespRate = "20 - 30 Breaths"
            case Hypotensive = "< 90"
            
            case OralAirway = "< 50 mm"
            case CentralLineFemoral = "3455"
            case ETTSizeCuffed = "3.0"
            case ETTSizeUnCuffed = "3.5"
            case SuctionCathSize = "< 8F"
            case NGTubeSize = "< 5F"
            case FoleyCathSize = " < 5F"
            case ChestTubeSize = "< 10F"
            
            case PEEP = "3-5 cmH20"
            case RespiratoryVentRate = "15 - 20 /min"
            
            //Takes the string of the enum declared in the case above and exectues the String called "the raw.value"
            func executeInfoDescription() ->String { return self.rawValue }
            
            
        }
        
        /// 30- 36 kg
        enum Adult: String {
            
            case Years = "Adult"
            case BloodPressure = "110 - 120  "
            case Pulse = "55 - 105"
            case RespRate = "12 - 20 Breaths"
            case Hypotensive = "< 90"
            
            case OralAirway = "< 50 mm"
            case CentralLineFemoral = "9-10 cm @ teeth/gums"
            case ETTSizeCuffed = "3.0"
            case ETTSizeUnCuffed = "3.5"
            case SuctionCathSize = "12 - 14F"
            case NGTubeSize = "< 5F"
            case FoleyCathSize = " < 5F"
            case ChestTubeSize = "24 - 36F"
            
            case PEEP = "3-5 cmH20"
            case RespiratoryVentRate = "15 - 20 /min"
            
            //Takes the string of the enum declared in the case above and exectues the String called "the raw.value"
            func executeInfoDescription() ->String { return self.rawValue }
            
            
        }
        
        /// 40 ++ kg
        enum LargeAdult40: String {
            
            case Years = "Adult"
            case BloodPressure = "110 - 120  "
            case Pulse = "55 - 105"
            case RespRate = "12 - 20 Breaths"
            case Hypotensive = "< 90"
            
            case OralAirway = "< 50 mm"
            case CentralLineFemoral = "9-10 cm @ teeth/gums"
            case ETTSizeCuffed = "7.0"
            case ETTSizeUnCuffed = "3.5"
            case SuctionCathSize = "14F"
            case NGTubeSize = "12 - 14F"
            case FoleyCathSize = "14 F"
            case ChestTubeSize = "24 - 36F"
            
            case PEEP = "3-5 cmH20"
            case RespiratoryVentRate = "12 - 20 /min"
            
            //Takes the string of the enum declared in the case above and exectues the String called "the raw.value"
            func executeInfoDescription() ->String { return self.rawValue }
            
            
        }
        /// 50 ++ kg
        enum LargeAdult50: String {
            
            case Years = "Adult"
            case BloodPressure = "110 - 120  "
            case Pulse = "60 - 100"
            case RespRate = "12 - 20 Breaths"
            case Hypotensive = "< 90"
            
            case OralAirway = "90 mm"
            case CentralLineFemoral = "21 cm @ teeth/gums"
            case ETTSizeCuffed = "7.5 - 8.0"
            case ETTSizeUnCuffed = "Use Cuffed"
            case SuctionCathSize = "14F"
            case NGTubeSize = "16 - 18F"
            case FoleyCathSize = "18F"
            case ChestTubeSize = "36 - 40F"
            
            case PEEP = "3-5 cmH20"
            case RespiratoryVentRate = "12 - 20 /min"
            
            //Takes the string of the enum declared in the case above and exectues the String called "the raw.value"
            func executeInfoDescription() ->String { return self.rawValue }
            
        }
        
        
    }
    
    // func executePedsEquipDescription()->String {return DrugDoseDescription.Decardon.rawValue}
    
}



//Test Class and function
class CriticalPedsData2: CriticalPediatrics {
    
    enum Critical: String {
        case data = "Hi Data"
    }
    
    static func addValues(Dose: CriticalPediatrics.PediatricData.Premature) -> String {
        
        return Dose.rawValue + " Equipment"
        
    }
}



