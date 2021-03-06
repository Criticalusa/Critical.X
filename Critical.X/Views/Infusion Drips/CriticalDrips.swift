//
//  ViewController.swift
//  Critical Drips
//
//  Created by Jadie Barringer III on 2/9/18.
//  Copyright © 2018 Jadie Barringer III. All rights reserved.
//

import UIKit

class CriticalDrips: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet var mainScrollView: UIScrollView!
    
    @IBOutlet var lbl_Title: UILabel!
    @IBOutlet var lbl_SubTitle: UILabel!
    
    @IBOutlet var lblDoseRange: UILabel!
    @IBOutlet var lblYields: UILabel!
    @IBOutlet var lblUnit: UILabel!
    @IBOutlet var lblMin: UILabel!
    @IBOutlet var lblMax: UILabel!
    @IBOutlet var lblUnitTotalDose: UILabel!
    @IBOutlet var lblUnitYields: UILabel!
    
    @IBOutlet var txtWeight: UITextField!
    @IBOutlet var txtTotalDose: UITextField!
    @IBOutlet var txtIvBag: UITextField!
    @IBOutlet var txtDose: UITextField!
    @IBOutlet var txtInfusionRate: UITextField!
    
    @IBOutlet var DoseSlider: UISlider!    
    
    @IBOutlet var btnIndications: UIButton!
    @IBOutlet var btn_AdversEffects: UIButton!
    @IBOutlet var btnWhatToKnow: UIButton!
    @IBOutlet var underLine: UIView!
    
    @IBOutlet var lbl_Details: UILabel!
    
    @IBOutlet var viewCard1: CardView!
    @IBOutlet var viewCard2: CardView!
    
    
    public var index = 0
    private var step: Float = 1
    private var detail_type = 0
    private var Drip:NSDictionary!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Infusion Calculator"
        
        mainScrollView.keyboardDismissMode = UIScrollViewKeyboardDismissMode.onDrag
        
        if ((UserDefaults.standard.object(forKey:"weight")) == nil) {
            UserDefaults.standard.set("80", forKey: "weight")
            UserDefaults.standard.synchronize()
        }
        
        interfaceConfig()
        SwitchTabs()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func interfaceConfig() -> Void {
        let Dripslist = (UserDefaults.standard.object(forKey:"drip_list") as! NSArray) as! [Any]
        Drip = Dripslist[index] as! NSDictionary
        
        lbl_Title.text = Drip.object(forKey: "maintitle") as? String
        lbl_SubTitle.text = Drip.object(forKey: "BrandName") as? String
        
        let minValue = Drip.object(forKey: "min") as! String
        let maxValue = Drip.object(forKey: "max") as! String
        let unit = Drip.object(forKey: "unit") as! String
        
        lblDoseRange.text = minValue + " - " + maxValue + " " + unit
        lblUnit.text = unit
        lblMin.text = minValue
        lblMax.text = maxValue
        
        txtWeight.text = UserDefaults.standard.object(forKey: "weight") as? String
        txtTotalDose.text = Drip.object(forKey: "totaldose") as? String
        txtIvBag.text = Drip.object(forKey: "bag") as? String
        txtDose.text = Drip.object(forKey: "dose") as? String
        txtInfusionRate.isUserInteractionEnabled = false
        
        DoseSlider.minimumValue = Float(minValue)!
        DoseSlider.maximumValue = Float(maxValue)!
        DoseSlider.value = Float(Drip.object(forKey: "dose") as! String)!
        step = Float(Drip.object(forKey: "increment") as! String)!
        
        Calculate()
    }
    
    func SwitchTabs() -> Void {
        var x_underLine:CGFloat = 0.0
        
        if detail_type == 0 {
            //lblDetails.text = "• Indications for diprivan would be continued sedation. \n• Conscious sedation."
            
            //set the text to draw from the pList.
            lbl_Details.text = Drip.object(forKey: "DrugClass") as? String
            
            //Colors of the button title changes when each button is selected.
            btnIndications.setTitleColor(UIColor.black, for: UIControlState.normal)
            btn_AdversEffects.setTitleColor(UIColor.gray, for: UIControlState.normal)
            btnWhatToKnow.setTitleColor(UIColor.gray, for: UIControlState.normal)
            
            x_underLine = btnIndications.frame.origin.x
            
        }
        else if detail_type == 1 {
            
            lbl_Details.text = Drip.object(forKey: "Indications") as? String
            
            //lblDetails.text = "• Indications for diprivan would be continued sedation. \n• Conscious sedation. \n• Conscious sedation."
            
            //Colors of the button title changes when each button is selected.
            btnIndications.setTitleColor(UIColor.gray, for: UIControlState.normal)
            btn_AdversEffects.setTitleColor(UIColor.black, for: UIControlState.normal)
            btnWhatToKnow.setTitleColor(UIColor.gray, for: UIControlState.normal)
            
            x_underLine = btn_AdversEffects.frame.origin.x
        }
        else if detail_type == 2 {
            lbl_Details.text = Drip.object(forKey: "WhatToKnow") as? String
            
            
            //lblDetails.text = "• Indications for diprivan would be continued sedation. \n• Conscious sedation. \n • Indications for diprivan would be continued sedation. \n• Conscious sedation. \n• Conscious sedation."
            
            //Colors of the button title changes when each button is selected.
            btnIndications.setTitleColor(UIColor.gray, for: UIControlState.normal)
            btn_AdversEffects.setTitleColor(UIColor.gray, for: UIControlState.normal)
            btnWhatToKnow.setTitleColor(UIColor.black, for: UIControlState.normal)
            
            x_underLine = btnWhatToKnow.frame.origin.x
        }
        lbl_Details.sizeToFit()
        
        UIView.animate(withDuration: 0.2, delay: 0, options: UIViewAnimationOptions.curveLinear, animations: {
            self.underLine.frame = CGRect(x: x_underLine, y: 34, width: 86, height: 4)
            self.lbl_Details.frame = CGRect(x: 20, y: self.lbl_Details.frame.origin.y, width: self.view.bounds.width - 36, height: self.lbl_Details.frame.size.height)
            
            self.viewCard1.frame = CGRect(x: 16, y: self.lbl_Details.frame.origin.y + self.lbl_Details.frame.size.height + 20, width: self.viewCard1.frame.size.width, height: self.viewCard1.frame.size.height)
            self.viewCard2.frame = CGRect(x: 16, y: self.viewCard1.frame.origin.y + self.viewCard1.frame.size.height + 25, width: self.viewCard2.frame.size.width, height: self.viewCard2.frame.size.height)
        }, completion: { (finished) in
            self.mainScrollView.contentSize = CGSize(width: 100, height: self.viewCard2.frame.origin.y + self.viewCard2.frame.size.height + 50)
        })
    }
    
    
    
    @IBAction func btnIndicationsClick(_ sender: Any) {
        detail_type = 0
        SwitchTabs()
    }
    
    @IBAction func btnAdverseEffectsClick(_ sender: Any) {
        detail_type = 1
        SwitchTabs()
    }
    
    @IBAction func btnWhatToKnowClick(_ sender: Any) {
        detail_type = 2
        SwitchTabs()
    }
    
    
    @IBAction func DoseSliderValueChanged(_ sender: Any) {
        let roundedValue = round(DoseSlider.value / step) * step
        DoseSlider.value = roundedValue
        txtDose.text = "\(roundedValue)"
        
        Calculate()
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField.text != "" {
            Calculate()
        }
    }
    
    func Calculate() -> Void {
        let unit = Drip.object(forKey: "unit") as! String
        
        let weight = Float(txtWeight.text!)!
        let totalDose = Float(txtTotalDose.text!)!
        let IvBag = Float(txtIvBag.text!)!
        let Dose = Float(txtDose.text!)!
        
        if unit == "mcg/min" {
            let yields = totalDose/IvBag * 1000
            lblYields.text = String(format:"%.1f", yields)
            lblUnitYields.text = "mcg/mL"
            
            let infusion = Dose/yields * 60
            txtInfusionRate.text = String(format:"%.1f", infusion)
        }
        else if unit == "mcg/hr" {
            let yields = totalDose/IvBag * 1000
            lblYields.text = String(format:"%.1f", yields)
            lblUnitYields.text = "mcg/mL"
            
            let infusion = Dose/yields
            txtInfusionRate.text = String(format:"%.2f", infusion)
        }
        else if unit == "mg/min" {
            let yields = totalDose/IvBag
            lblYields.text = String(format:"%.1f", yields)
            lblUnitYields.text = "mg/mL"
            
            let infusion = Dose/yields * 60
            txtInfusionRate.text = String(format:"%.2f", infusion)
        }
        else if unit == "mg/hr" {
            let yields = totalDose/IvBag
            lblYields.text = String(format:"%.1f", yields)
            lblUnitYields.text = "mg/mL"
            
            let infusion = Dose/yields
            txtInfusionRate.text = String(format:"%.1f", infusion)
        }
        else if unit == "g/hr" {
            let yields = totalDose/IvBag
            lblYields.text = String(format:"%.1f", yields)
            lblUnitYields.text = "mg/mL"
            
            let infusion = (Dose/yields)
            txtInfusionRate.text = String(format:"%.2f", infusion)
        }
        else if unit == "units/min" {
            let yields = totalDose/IvBag
            lblYields.text = String(format:"%.2f", yields)
            lblUnitTotalDose.text = "units"
            lblUnitYields.text = "units/mL"
            
            let infusion = Dose/yields * 60
            txtInfusionRate.text = String(format:"%.2f", infusion)
        }
        else if unit == "mUnits/min" {
            let yields = totalDose/IvBag
            lblYields.text = String(format:"%.2f", yields)
            lblUnitTotalDose.text = "mUnits"
            lblUnitYields.text = "mUnits/mL"
            
            let infusion = Dose/yields * 60/1000
            txtInfusionRate.text = String(format:"%.1f", infusion)
        }
        else if unit == "units/hr" {
            let yields = totalDose/IvBag
            lblYields.text = String(format:"%.2f", yields)
            lblUnitTotalDose.text = "units"
            lblUnitYields.text = "units/mL"
            
            let infusion = Dose/yields
            txtInfusionRate.text = String(format:"%.1f", infusion)
        }
        else if unit == "mcg/kg/min" {
            var yields = totalDose/IvBag
            lblUnitYields.text = "mg/mL"
            if yields < 1 {
                yields = totalDose/IvBag*1000
                lblUnitYields.text = "mcg/mL"
            }
            lblYields.text = String(format:"%.1f", yields)
            
            let infusion = Dose * weight/(totalDose/IvBag*1000)*60
            txtInfusionRate.text = String(format:"%.1f", infusion)
        }
        else if unit == "units/kg/min" {
            var yields = totalDose/IvBag
            lblUnitYields.text = "mg/mL"
            if yields < 1 {
                yields = totalDose/IvBag*1000
                lblUnitYields.text = "mcg/mL"
            }
            lblYields.text = String(format:"%.1f", yields)
            
            let infusion = Dose * weight/(totalDose/IvBag*1000)*60
            txtInfusionRate.text = String(format:"%.2f", infusion)
        }
        else if unit == "mcg/kg/hr" {
            var yields = totalDose/IvBag
            lblUnitYields.text = "mg/mL"
            if yields < 1 {
                yields = totalDose/IvBag*1000
                lblUnitYields.text = "mcg/mL"
            }
            lblYields.text = String(format:"%.1f", yields)
            
            let infusion = Dose * weight/(totalDose/IvBag*1000)
            txtInfusionRate.text = String(format:"%.1f", infusion)
        }
        else if unit == "mg/kg/hr" {
            var yields = totalDose/IvBag
            lblUnitYields.text = "mg/mL"
            if yields < 1 {
                yields = totalDose/IvBag*1000
                lblUnitYields.text = "mcg/mL"
            }
            lblYields.text = String(format:"%.1f", yields)
            
            let infusion = ((Dose * weight * IvBag) / totalDose)
            txtInfusionRate.text = String(format:"%.1f", infusion)
        }
        
        UserDefaults.standard.set(txtWeight.text, forKey: "weight")
        UserDefaults.standard.synchronize()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

