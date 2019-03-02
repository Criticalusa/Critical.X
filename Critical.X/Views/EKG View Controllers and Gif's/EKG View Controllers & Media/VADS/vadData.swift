//
//  vadData.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 3/2/19.
//  Copyright © 2019 Jadie Barringer III. All rights reserved.
//

import Foundation

extension VAD_ViewController {
    
    enum VAD_Explanaton: String {
        
        case Overview = """
        A Ventricular Assist Device (VAD) is a pump that takes blood from the lower ventricles that provide cardiac output to those who are in heart failure.
        \rAlthough they are mainly used as a bridge to transplant, these devices can be also for destination therapy (those who are > 70 y/o who don't qualify for a transplant. These patients will have the device for the rest of their lives.
        \rFinally, used as a bridge to recovery. There are two main pumps that are used 1) Centrifugal flow  (~2,500 rpm), which are mainly used as a bridge to transplant and 2 ) Axial flow (~10,000 rpm): Which can be used for both bridges to transplant and destination therapy.
        
        Things to Know: Due to the continuous flow of blood, pulses may or may not be present.
        \rSince blood pressures are challenging to obtain, treat the mean arterial pressure.
        \rUse a doppler to obtain the MAP. The first sound heart while taking a BP with the doppler will be the MAP.
        \rEKG's are typically not affected by the VAD.
        \r02 saturations may be difficult to obtain due to flow.
        \rAED's do not affect VAD performance.
        
        VAD Components: The components that may be present on the device may be the following:
        \rBatteries — patients carry at least two lithium batteries at all times; VAD can be recharged using a standard power supply.
        \rController — monitors pump function (flow, speed, power), controls pump speed and manages the power supply, records pump data and alarms; displays battery life and function; from here, data can be downloaded and analyzed.
        \rDriveline — subcutaneously tunneled from the epigastrium or RUQ to the pump;   contains wires that provide power and operating details to the pump from the controller.
        
        """
        // Totall HEart
        case TotalArtificialHeart = """
        \rWhat to know: The total artifical heart is a device used to totally bypass the cardiac system
        
        \rWhat to know: ARTIFICAL HEART Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. HELLLLLLOOOOO Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.HELLLLLLOOOOO Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.HELLLLLLOOOOO Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
        
        """
        case HeartMateII = """
        \rWhat to know: The heartMate II is a ventriuclar assist device thats artifical heart is a device used to totally bypass the cardiac system
        What to know:nHELLLLLLOOOOO Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. HELLLLLLOOOOO Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.HELLLLLLOOOOO Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.HELLLLLLOOOOO Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
        """
    
        case HVAD = """
        \rWhat to know: The HVAD (Heartware Ventricular Assist Device is a ventriuclar assist device thats artifical heart is a device used to totally bypass the cardiac system
        
        """
        
        //Takes the string of the enum declared in the case above and exectues the String called "the raw.value"
        func display() ->String { return self.rawValue }
        
        
    }
    
    
}
