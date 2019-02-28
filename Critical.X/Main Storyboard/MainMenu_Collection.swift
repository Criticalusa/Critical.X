//
//  MainMenuTableViewController.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 7/5/18.
//  Copyright © 2018 Jadie Barringer III. All rights reserved.
//

import UIKit
import LTMorphingLabel
import EasyPeasy

var username = UserDefaults.standard.value(forKey: "name")

extension Date {
    func dayOfWeek() -> String? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: self).capitalized
        // or use capitalized(with: locale) if you want
    }
}

extension String {
    
    // Random Emoji's to be displayed during the afternoon
    
    static func randomAfternoon(length: Int = 1) -> String {
        let afternoonEmoji = ["🌞","🌤","😎","🌎"]
        var randomString: String = ""
        
        for _ in 0..<length {
            let randomValue = arc4random_uniform(UInt32(afternoonEmoji.count))
            randomString += "\(afternoonEmoji[afternoonEmoji.index(afternoonEmoji.startIndex, offsetBy: Int(randomValue))])"
        }
        return randomString
    }
    
    
    
    // Random Emoji's to be displayed during the Morning
    
    static func randomMorning(length: Int = 1) -> String {
        let morningEmoji = ["☀️","🌞","🌤", "😀", "😌"]
        var randomString: String = ""
        
        for _ in 0..<length {
            let randomValue = arc4random_uniform(UInt32(morningEmoji.count))
            randomString += "\(morningEmoji[morningEmoji.index(morningEmoji.startIndex, offsetBy: Int(randomValue))])"
        }
        return randomString
    }
    
    // Random Emoji's to be displayed during the evening
    static func randomEvening(length: Int = 1) -> String {
        let eveningEmoji = ["🌒","🌖","🌙", "🌛", "🌝"]
        var randomString: String = ""
        
        for _ in 0..<length {
            let randomValue = arc4random_uniform(UInt32(eveningEmoji.count))
            randomString += "\(eveningEmoji[eveningEmoji.index(eveningEmoji.startIndex, offsetBy: Int(randomValue))])"
        }
        return randomString
    }
}



class MainMenu_Collection: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, LTMorphingLabelDelegate {
    
    
    
    @IBOutlet var menuCollectionView: UICollectionView!
    
    @IBOutlet var label: LTMorphingLabel!
    
    @IBOutlet weak var criticalLogo: UIImageView!
    
    // Variable declaration
    var mainMenu = [String]()
    
    var mainMenuDetail = [String]()
    
    var cellImages = [String]()
    
    var storyBoardID = [String]()
    
    var noName = ""
    
    
    // Function to get the current time.
    func getTimefromDate()  {
        
        let hours = (Calendar.current.component(.hour, from: Date()))
        
        let minutes = (Calendar.current.component(.minute, from: Date()))
        
        let seconds = (Calendar.current.component(.second, from: Date()))
        
        let day = (Calendar.current.component(.weekday, from: Date()))
        
        // This is how we get the day of the week.
        _ = DateFormatter()
        //let dateFormatter = DateFormatter()

        // Create new variable to store the day of the week
        // Gets the day of the week from the extension above
        let dayOfTheWeek = Date().dayOfWeek()!
        
       
        // Print the day of the week
        print ("Today is \(dayOfTheWeek)")
        
        // Setting a new variable to the function in the extension above.
        
        let randomMorning = String.randomMorning()
        
        let randomAfternoon = String.randomAfternoon()
        
        let randomEvening = String.randomEvening()
        
    
        
        // Switch on the hours that when its when its a certain time frame, we will display the greeting.
        switch hours {
        case 05..<12:
            //label.text = "Good Afternoon \(randomMorning), Jadie."
            
            //Create an array of different greetings.
            let greetings: Array = ["Hi!", "Cheers!", "Good Morning!", "Welcome Back!", "Happy \(dayOfTheWeek)!"]
            
            let greetingFormal: Array = ["Hi", "Cheers", "Good Morning", "Welcome Back", "Happy \(dayOfTheWeek)"]
            
            //Get the index at each array at RANDOM
            let index = Int(arc4random_uniform(UInt32(greetings.count)))
            
            // Convert the index at random into the string
            //let displayRandomGreeting = greetings[index]
            let formalDisplayRandomGreeting = greetingFormal [index]
            
            //gets the name from the initial login and stores it.""
            var username = UserDefaults.standard.value(forKey: "name")
            
            
            // Conditional
            if username == nil {
                username = noName
                //label.text = "Good Morning! \(randomAfternoon)"
                let displayRandomGreeting = greetings.randomElement()
                label.text = "\(randomMorning) \(displayRandomGreeting!)"
                print("There was no username Entered section 5-12")
                
            } else if username != nil {
                label.text = "\(randomMorning) \(formalDisplayRandomGreeting), \(username!)!"
                print("Name was entered section 5-12")
            }
            
            print("Today is \(day)")
            
        
        // If the time is between Noon and 6pm
        case 12..<18:
            //label.text = "Good Afternoon \(randomAfternoon), Jadie."
            
            
            //Create an array of different greetings.
            let greetings: Array = ["Hi!", "Cheers!", "Good Afternoon!", "Welcome Back!", "Happy \(dayOfTheWeek)!"]
            let greetingFormal: Array = ["Hi", "Cheers", "Good Afternoon", "Welcome Back", "Happy \(dayOfTheWeek)"]
            
            //Get the index at each array at RANDOM
            let index = Int(arc4random_uniform(UInt32(greetings.count)))
            
            // Convert the index at random into the string
            //let displayRandomGreeting = greetings[index]
            let formalDisplayRandomGreeting = greetingFormal [index]
            
            //gets the name from the initial login and stores it.""
            var username = UserDefaults.standard.value(forKey: "name")
            
            if username == nil {
                username = noName
                //label.text = "Good Morning! \(randomAfternoon)"
                 let displayRandomGreeting = greetings.randomElement()
                    label.text = "\(randomMorning) \(displayRandomGreeting!) "
                print("There was no username Entered 12-18 hr section")
            } else if username != nil {
                //label.text = "Good Morning \(randomAfternoon), \(username!)!"
                label.text = "\(randomAfternoon) \(formalDisplayRandomGreeting), \(username!)!"
                print("A Name was entered 12-18 hrs section")

            }
            
        
        
        
        // If the time is between 6pm and midnight
        case 18..<24:
            //label.text = "Good Evening \(randomEvening), Jadie."
            
           
            //Create an array of different greetings.
            
            let greetings: Array = ["Hi!", "Cheers!", "Good Evening!", "Welcome Back!", "Happy \(dayOfTheWeek)!"]
            
            let greetingFormal: Array = ["Hi", "Cheers", "Good Evening", "Welcome Back", "Happy \(dayOfTheWeek)"]
            
            //Get the index at each array at RANDOM
            
            let index = Int(arc4random_uniform(UInt32(greetings.count)))
            
            // Convert the index at random into the string
            //let displayRandomGreeting = greetings[index]
            let formalDisplayRandomGreeting = greetingFormal [index]
            
            //gets the name from the initial login and stores it.""
            var username = UserDefaults.standard.value(forKey: "name")
            
            if username == nil {
                username = noName
                //label.text = "Good Morning! \(randomAfternoon)"
                if let displayRandomGreeting = greetings.randomElement() {
                label.text = "\(randomMorning) \(displayRandomGreeting)"
                print("There was no username Entered 18-24 hr section")
                }
            }
            if username != nil {
                //label.text = "Good Morning \(randomAfternoon), \(username!)!"
                //let displayRandomGreeting = greetings.randomElement()
                    label.text = "\(randomEvening) \(formalDisplayRandomGreeting), \(username!)!"
                    
                
                print("A Name was entered 18-24 hrs section")
                print(username!)
            }

            
        //If the time is between midnight and 5am
        default:
            //label.text = "Good Evening \(randomEvening), Jadie."
            
            //Create an array of different greetings.
            let greetings: Array = ["Hi!", "Cheers!", "Good Evening!", "Welcome Back!", "Happy \(dayOfTheWeek)!"]
            
            let greetingFormal: Array = ["Hi", "Cheers", "Good Evening", "Welcome Back", "Happy \(dayOfTheWeek)"]
           
            
            //Get the index at each array at RANDOM
            let index = Int(arc4random_uniform(UInt32(greetings.count)))
            
            
            // Convert the index at random into the string
            //let displayRandomGreeting = greetings[index]
            let formalDisplayRandomGreeting = greetingFormal [index]
            
            
            //gets the name from the initial login and stores it.""
            var username = UserDefaults.standard.value(forKey: "name")
            
            if username == nil {
                username = noName
                //label.text = "Good Morning! \(randomAfternoon)"
                if let displayRandomGreeting = greetings.randomElement() {
                    label.text = "\(randomEvening) \(displayRandomGreeting)"

                }
            } else if username != nil {
                //label.text = "Good Morning \(randomAfternoon), \(username!)!"
                label.text = "\(randomEvening) \(formalDisplayRandomGreeting), \(username!)"
                
            }
            
        
        }
        
        print("Current time is", hours,":", minutes,":", seconds)
    }
    
    
    
    
    func setAnimationLabel(){
        
        
        //gets the name from the initial login and stores it.""
        _ = UserDefaults.standard.value(forKey: "name")
        //let username = UserDefaults.standard.value(forKey: "name")

        
        //label = LTMorphingLabel(frame: CGRect(x: 50, y: 80, width: 100, height: 50))
//        label = LTMorphingLabel(frame: CGRect(x: 8, y: 175, width: 359, height: 29))
        
        // We position the label here with the y value  = the sun of the navigation bar plus the image with the spaces in beteween.
        let topBar = self.navigationController?.navigationBar.frame.height
        
        let criticalLogoHeight = self.criticalLogo.frame.height
        
        let distancfromTop = topBar ?? 44 + 25 + criticalLogoHeight
        
        label = LTMorphingLabel(frame: CGRect(x: 8, y:self.view.frame.minY + 142, width: self.view.frame.width, height: 29))
        
        label.textAlignment = .center
        
        label.font = UIFont(name: "HelveticaNeue-CondensedBlack", size: 20)
        
        label.textColor = UIColor.darkGray
        
        label.text = "Hello, Welcome to Critical"
        
        label.morphingEffect = .anvil
        
      
        view.addSubview(label)
        
        /** Create the UILabel */
        
   
      
    }
    
    func animateNavBar()  {
        let fadeTextAnimation = CATransition()
        fadeTextAnimation.duration = 0.3
        fadeTextAnimation.type = kCATransitionMoveIn
        
        //        kCATransitionFade
        //        kCATransitionMoveIn
        //        kCATransitionPush
        //        kCATransitionReveal
        //
        navigationController?.navigationBar.layer.add(fadeTextAnimation, forKey: "fadeText")
        navigationItem.title = "The Barringer Group ©"
    }
    
    override func viewWillAppear(_ animated: Bool) {
       animateNavBar()
    }
    
    // Loads the animation once the view appears
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        setAnimationLabel()
        getTimefromDate()
        
        
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        
        // Clear the animation label once the view dissappears.
        label.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        
//        self.navigationItem.title = "Critical - The Barringer Group ©"
//        let navBarAppearance = UINavigationBar.appearance()
//        navBarAppearance.tintColor = .white
//        navBarAppearance.titleTextAttributes = [
//            NSAttributedString.Key.foregroundColor: UIColor.white,
//            NSAttributedString.Key.font: UIFont(name: "Marker Felt", size: 18)!]

    
        
        mainMenu = ["About Critical", // 0
            "Airway Management", // 1
            "Cardiac",// 2
            "Clinical Calculators",// 2
            "Clinical Pharmacology", // 3
            "Infusions", // 5
            "Fluids / Blood products", // 6
            "Lab Values", // 7
            "Balloon Pump", // 8
            "Neuro", // 9
            "Pediatrics", // 10
            "Obstetrics", // 11
            "Hemodynamics", // 12
            "RSII", //13
            "Procedures & Imaging", // 14
            "Ventilator Management"] // 16
        
        mainMenuDetail = ["Rate Us, Email, Disclaimer  Information",// 0
            "Intubation, Difficult Airway Algorithms",// 1
            "EKG Interpretations & ACLS Guidelines",// 2
            "Medical Calculators & Medical Spanish",// 3
            "Clinical Drug Pharmacodynamics",// 4
            "Common Drips in Critical Care",// 5
            "PRBC, 0.9%, Albumin ",// 6
            "Common Lab Value Interpretations",// 7
            "Timing, Modes & Troubleshooting",// 8
            "Assessments & Stroke Scales",// 9
            "Resuscitation, Calcs & Equipment",// 10
            "Fetal Heart Monitoring Strips",//  11
            "Hemodynamic Parameters / Monitoring",// 12
            "Rapid Sequence Induction & Intubation",// 13
            "CXR, Ultrasound & CVC Insertion",// 14
            "Ventilator Modes, ETC02 Waveform Capnography"]// 15
        
        // Images and associated Indexpaths
        //  "formula",// 3
        // "Pharmacology",// 4
        cellImages = ["CRITICALLogo_Circle",// 0
            "CRITICAL_Airway_Logo_Circle",// 1
            "CRITICAL_Cardiac_Logo_Circle",// 2
            "CRITICAL_DrugCalcs_Logo_Circle",// 3
            "CRITICAL_Meds_1Logo_Circle",// 4
            "CRITICAL_Drips2_Logo_Circle",// 5
            "CRITICAL_CBC_Logo_Circle",// 6
            "CRITICAL_LabValues_Logo_Circle",// 7
            "CRITICAL_IABPLogo_Circle",// 8
            "CRITICAL_Neuro_Logo1_Circle",// 9
            "CRITICAL_PedsLogo1_Circle",// 10
            "OB",//  11
            "CRITICAL_Hemodynamcis_Logo_Circle",// 12
            "CRITICAL_RSI_Logo_Circle",// 13
            "CRITICAL_SpecialProcedures_Logo_Circle",// 14
            "CRITICAL_VentLogo_Circle"]// 15
        
        // StoryBoard ID and associated Indexpaths
        storyBoardID = ["About Critical", // 0
            "Airway management", // 1
            "EKG", // 2
            "Clinical Calculators", // 3
            "Clinical pharmacology", // 4
            "Infusions",// 5
            "Fluids blood products",// 6
            "Lab values", // 7
            "Balloon pump",// 8
            "Neuro", // 9
            "Pediatrics", // 10
            "Obstetrics",//  11
            "Hemo", // 12
            "Rapid sequence intubation", // 13
            "Procedures & imaging", // 14
            "Ventilator management"] // 15
        
        // Do any additional setup after loading the view.
    }
    

    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mainMenu.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MenMenuCollectionViewCell
        
        cell.mainMenu_CellLabel.text = mainMenu[indexPath.item]
        cell.mainMenuDetail_CellLabel.text = mainMenuDetail [indexPath.item]
        cell.mainMenu_CellImage.image = UIImage (named:cellImages[indexPath.item])
        
        return cell
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        print(storyBoardID [indexPath.item])
        
        //There are multiple types of storyboards in this case, navigation/modal presentations. So we have to use conditionals to set the index path for the specific view controllers that we want to be modal, and then for the "else", everything else will be set to be pushed via navigation.
        
        // Conditionals to push these two index paths for modal view.
        
        // ABOUT PAGE --> MODAL
        if indexPath.row == 0 {
            let storyboard = UIStoryboard(name: "Main", bundle: nil) // Name has to reflect the origionting SB
            let aboutVC = storyboard.instantiateViewController(withIdentifier: "About Critical") // Making sure the identifier matches the SBID
            self.present(aboutVC, animated: true, completion: nil)
            
        }
            // PEDIATRICS PAGE --> MODAL
        else if indexPath.row == 10 {
            let storyboard = UIStoryboard(name: "Main", bundle: nil) // Name has to reflect the origionting SB
            let rsiVC = storyboard.instantiateViewController(withIdentifier: "Critical Peds") // Making sure the identifier matches the SBID
            self.present(rsiVC, animated: true, completion: nil)
            
        }
            // RSI PAGE --> MODAL
        else if indexPath.row == 13 {
            let storyboard = UIStoryboard(name: "Main", bundle: nil) // Name has to reflect the origionting SB
            let rsiVC = storyboard.instantiateViewController(withIdentifier: "Rapid sequence intubation") // Making sure the identifier matches the SBID
            self.present(rsiVC, animated: true, completion: nil)
            
        }
            
            // Hemodynamics VC PAGE --> MODAL
        else if indexPath.row == 12 {
            let storyboard = UIStoryboard(name: "Main", bundle: nil) // Name has to reflect the origionting SB
            let rsiVC = storyboard.instantiateViewController(withIdentifier: "Hemo") // Making sure the identifier matches the SBID
            self.present(rsiVC, animated: true, completion: nil)
            
        }
            //  Everything else will be pushed via navigation here.
        else {
            // Set the Storyboard ID to each indexPath.
            let SBID = storyBoardID [indexPath.item]
            
            // Name has to reflect the origionting SB.
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: SBID)
            
            // Push the ViewController via Navigation
            self.navigationController?.pushViewController(vc, animated: true)
            
        }
    }
    
}



