//
//  RSISetting.swift
//  Critical_X_RSI
//
//  Created by Admin on 26/01/2018.
//  Copyright © 2018 Jadie Barringer III. All rights reserved.
//

import UIKit

class RSISetting: UIViewController {
    
    @IBOutlet var ScrollView: UIScrollView!
    @IBOutlet weak var closeButton: UIButton!
    
    @IBOutlet weak var updatButton : UIButton! {
        didSet {
            updatButton.clipsToBounds = true
            updatButton.layer.cornerRadius = 4
        }
    }
    
    @IBOutlet var txt_Lidocaine: UITextField!
    @IBOutlet var txt_Atropine: UITextField!
    @IBOutlet var txt_Fentanyl_min: UITextField!
    @IBOutlet var txt_Fentanyl_max: UITextField!
    @IBOutlet var txt_Vecuronium: UITextField!
    @IBOutlet var txt_Glycopyrolate_min: UITextField!
    @IBOutlet var txt_Glycopyrolate_max: UITextField!
    @IBOutlet var txt_Rocuronium0_min: UITextField!
    @IBOutlet var txt_Rocuronium0_max: UITextField!
    
    @IBOutlet var txt_Etomidate: UITextField!
    @IBOutlet var txt_Ketamine: UITextField!
    @IBOutlet var txt_Versed_min: UITextField!
    @IBOutlet var txt_Versed_max: UITextField!
    @IBOutlet var txt_Propofol_min: UITextField!
    @IBOutlet var txt_Propofol_max: UITextField!
    @IBOutlet var txt_Succinycholine_min: UITextField!
    @IBOutlet var txt_Succinycholine_max: UITextField!
    @IBOutlet var txt_Vecuronium2: UITextField!
    @IBOutlet var txt_Rocuronium_min: UITextField!
    @IBOutlet var txt_Rocuronium_max: UITextField!
    @IBOutlet var txt_Cisatricurium: UITextField!
    
    var Parameters : NSMutableDictionary!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        closeButton.layer.cornerRadius = closeButton.frame.size.width / 2
        ScrollView.contentSize = CGSize(width: 100, height: 1150)
        ScrollView.keyboardDismissMode = UIScrollViewKeyboardDismissMode.onDrag
        
        Parameters = NSMutableDictionary.init(dictionary: UserDefaults.standard.object(forKey:"parameters") as! NSDictionary)
        
        txt_Lidocaine.text = "\(Parameters.object(forKey: "lidocaine") as! Double)"        
        txt_Atropine.text = "\(Parameters.object(forKey: "atropine") as! Double)"
        txt_Fentanyl_min.text = "\(Parameters.object(forKey: "fentanyl_min") as! Double)"
        txt_Fentanyl_max.text = "\(Parameters.object(forKey: "fentanyl_max") as! Double)"
        txt_Vecuronium.text = "\(Parameters.object(forKey: "vecDefasiculating") as! Double)"
        txt_Glycopyrolate_min.text = "\(Parameters.object(forKey: "glycopyrolate_min") as! Double)"
        txt_Glycopyrolate_max.text = "\(Parameters.object(forKey: "glycopyrolate_max") as! Double)"
        txt_Rocuronium0_min.text = "\(Parameters.object(forKey: "rocDefasiculating_min") as! Double)"
        txt_Rocuronium0_max.text = "\(Parameters.object(forKey: "rocDefasiculating_max") as! Double)"
        txt_Etomidate.text = "\(Parameters.object(forKey: "etomidate") as! Double)"
        txt_Ketamine.text = "\(Parameters.object(forKey: "ketamine") as! Double)"
        txt_Versed_min.text = "\(Parameters.object(forKey: "versed_min") as! Double)"
        txt_Versed_max.text = "\(Parameters.object(forKey: "versed_max") as! Double)"
        txt_Propofol_min.text = "\(Parameters.object(forKey: "propofol_min") as! Double)"
        txt_Propofol_max.text = "\(Parameters.object(forKey: "propofol_max") as! Double)"
        txt_Succinycholine_min.text = "\(Parameters.object(forKey: "succs_min") as! Double)"
        txt_Succinycholine_max.text = "\(Parameters.object(forKey: "succs_max") as! Double)"
        txt_Vecuronium2.text = "\(Parameters.object(forKey: "vecuronium") as! Double)"
        txt_Rocuronium_min.text = "\(Parameters.object(forKey: "rocuronium_min") as! Double)"
        txt_Rocuronium_max.text = "\(Parameters.object(forKey: "rocuronium_max") as! Double)"
        txt_Cisatricurium.text = "\(Parameters.object(forKey: "cisatricurium") as! Double)"

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func UpdateClick(_ sender: Any) {
        
        Parameters.setValue(txt_Lidocaine.text?.doubleValue, forKey: "lidocaine")
        Parameters.setValue(txt_Atropine.text?.doubleValue, forKey: "atropine")
        Parameters.setValue(txt_Fentanyl_min.text?.doubleValue, forKey: "fentanyl_min")
        Parameters.setValue(txt_Fentanyl_max.text?.doubleValue, forKey: "fentanyl_max")
        Parameters.setValue(txt_Vecuronium.text?.doubleValue, forKey: "vecDefasiculating")
        Parameters.setValue(txt_Glycopyrolate_min.text?.doubleValue, forKey: "glycopyrolate_min")
        Parameters.setValue(txt_Glycopyrolate_max.text?.doubleValue, forKey: "glycopyrolate_max")
        Parameters.setValue(txt_Rocuronium0_min.text?.doubleValue, forKey: "rocDefasiculating_min")
        Parameters.setValue(txt_Rocuronium0_max.text?.doubleValue, forKey: "rocDefasiculating_max")
        Parameters.setValue(txt_Etomidate.text?.doubleValue, forKey: "etomidate")
        Parameters.setValue(txt_Ketamine.text?.doubleValue, forKey: "ketamine")
        Parameters.setValue(txt_Versed_min.text?.doubleValue, forKey: "versed_min")
        Parameters.setValue(txt_Versed_max.text?.doubleValue, forKey: "versed_max")
        Parameters.setValue(txt_Propofol_min.text?.doubleValue, forKey: "propofol_min")
        Parameters.setValue(txt_Propofol_max.text?.doubleValue, forKey: "propofol_max")
        Parameters.setValue(txt_Succinycholine_min.text?.doubleValue, forKey: "succs_min")
        Parameters.setValue(txt_Succinycholine_max.text?.doubleValue, forKey: "succs_max")
        Parameters.setValue(txt_Vecuronium2.text?.doubleValue, forKey: "vecuronium")
        Parameters.setValue(txt_Rocuronium_min.text?.doubleValue, forKey: "rocuronium_min")
        Parameters.setValue(txt_Rocuronium_max.text?.doubleValue, forKey: "rocuronium_max")
        Parameters.setValue(txt_Cisatricurium.text?.doubleValue, forKey: "cisatricurium")
        
        
        UserDefaults.standard.set(Parameters, forKey: "parameters")
        UserDefaults.standard.synchronize()
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func dismissRSIViewController(_ sender: Any) {        
        dismiss(animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func resetDosageparameters(_ sender: Any) {
            Parameters = UserDefaults.standard.object(forKey:"parameters") as! NSDictionary as! NSMutableDictionary
        
            Parameters =  ["atropine": 0.02, "lidocaine": 1, "fentanyl_min": 1, "fentanyl_max": 2, "vecDefasiculating": 0.01, "rocDefasiculating_min": 0.06, "rocDefasiculating_max": 0.12, "glycopyrolate_min": 0.1, "glycopyrolate_max": 0.2, "etomidate": 0.3, "ketamine": 1.5, "propofol_min": 1, "propofol_max": 2, "versed_min": 0.1, "versed_max": 0.2, "cisatricurium": 0.2, "vecuronium": 0.1, "rocuronium_min": 0.6, "rocuronium_max": 1.2, "succs_min": 1, "succs_max": 1.5]
            
        txt_Lidocaine.text = "1.0"
        txt_Atropine.text? = "0.02"
        txt_Fentanyl_min.text? = "1.0"
        txt_Fentanyl_max.text? = "2.0"
        txt_Vecuronium.text? = "0.01"
        txt_Glycopyrolate_min.text = "0.1"
       txt_Glycopyrolate_max.text = "0.2"
        txt_Rocuronium0_min.text = "0.06"
        txt_Rocuronium0_max.text = "0.12"
        txt_Etomidate.text? = "0.3"
        txt_Ketamine.text = "1.5"
       txt_Versed_min.text = "0.1"
       txt_Versed_max.text = "0.2"
        txt_Propofol_min.text = "1.0"
        txt_Propofol_max.text = "2.0"
        txt_Succinycholine_min.text = "1.0"
       txt_Succinycholine_max.text = "1.5"
        txt_Vecuronium2.text = "0.1"
        txt_Rocuronium_min.text = "0.6"
        txt_Rocuronium_max.text = "1.2"
        txt_Cisatricurium.text = "0.2"
        
        
        print("Parameters set to default values")
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension String {
    var doubleValue: Double {
        return (self as NSString).doubleValue
    }
}
