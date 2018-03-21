//
//  MoreDetailViewController.swift
//  LabValues
//
//  Created by Admin on 31/01/2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class MoreDetailViewController: UIViewController {

    
    @IBOutlet var scrollView: UIScrollView!
    
    @IBOutlet var lbTitle: UILabel!
    @IBOutlet var lbSubtitle: UILabel!
    @IBOutlet var lbDescription: UILabel!
    @IBOutlet var lbIncreasedin: UILabel!
    @IBOutlet var lbNote: UILabel!
    @IBOutlet var lbUnit: UILabel!
    @IBOutlet var lbValue: UILabel!
    @IBOutlet var factorsAffecting: UILabel!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var lbReference: UILabel!
    @IBOutlet weak var labTube: UIImageView!
    @IBOutlet weak var indicationsLbl: UILabel!
  
    
    public var info = [AnyHashable: Any]()

    //MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = info["description"] as? String

        indicationsLbl.text = info["indications"] as? String
        lbTitle.text = info["title"] as? String
        lbSubtitle.text = info["description"] as? String
        lbDescription.text = info["longdescription"] as? String
        lbIncreasedin.text = info["increasedin"] as? String
        lbNote.text = info["decreasedin"] as? String
        lbUnit.text = info["unit"] as? String
        lbValue.text = info["value"] as? String
        factorsAffecting.text = info["factors"] as? String
        lbReference.text = info["CriticalValues"] as? String
        imageView.image = UIImage(named: (info["image"] as? String)!)
        imageView.layer.cornerRadius = 30.0
       
        labTube.image = UIImage(named: (info["labTubeColor"] as? String)!)

        scrollView.contentSize = CGSize(width: self.view.frame.size.width, height: 700)

        // half the radius of the image
        imageView.layer.masksToBounds = true
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.layer.borderWidth = 0.2
        scrollView.contentSize = CGSize(width: 320, height: 850)
        
        // Do any additional setup after loading the view.
    }
    
 
    
//    @IBAction func didPressGoogle(_ sender: Any) {
//        if let url =  URL(string: (info["googlelink"] as! String)){
//            UIApplication.shared.openURL(url)
//        }
//
//    }
//
//    @IBAction func didPressLabTest(_ sender: Any) {
//        if let url =  URL(string: (info["labTest"] as! String)){
//            UIApplication.shared.openURL(url)
//        }
//    }
//
//    @IBAction func didPressMedline(_ sender: Any) {
//        if let url =  URL(string: (info["pubmed"] as! String)){
//            UIApplication.shared.openURL(url)
//        }
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
