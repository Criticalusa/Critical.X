//
//  AppDelegate.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 10/22/17.
//  Copyright © 2017 Jadie Barringer III. All rights reserved.
//

import UIKit


extension UIApplication {
    
    class func isFirstLaunch() -> Bool {
       
        if UserDefaults.standard.bool(forKey: "name") {
            UserDefaults.standard.set(true, forKey: "name")
            UserDefaults.standard.synchronize()
            return true
        }
        return false
    }
}

@UIApplicationMain


class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
  
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        UserDefaults.standard.value(forKey: "APP_OPENED_COUNT")
        
        UINavigationBar.appearance().tintColor = UIColor.white //your desired color here

    
        
        // Create the window for the onboarding screen
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        // Here we say what story board we are coming from.
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        // Creating a variable for the viewController
        var vc: UIViewController
        
        // Conditional to set the name typed in and also to show it for the first time when the app is launched.
        if (UserDefaults.standard.value(forKey: "name") as? String) == nil {
            
            print("Username was entered- appDelegate")
            // show the onboarding screen, with the SB ID thats declared in the ViewController
            vc = storyboard.instantiateViewController(withIdentifier: "obBoardingVC")
        } else {
            // show the main menu screen
            vc = storyboard.instantiateInitialViewController()!
            print("Username was left blank - appDelegate")

            //vc = storyboard.instantiateViewController(withIdentifier: "obBoardingVC")
            
        }
        
        
        self.window?.rootViewController = vc
        self.window?.makeKeyAndVisible()
        
    
        
        return true
    }
    
   
    
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

