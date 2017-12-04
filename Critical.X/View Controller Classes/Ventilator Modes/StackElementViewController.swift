//
//  StackElementViewController.swift
//  StackedMenu
//
//  
//

import UIKit

class StackElementViewController: UIViewController {
    
    @IBOutlet var ventCardView: UIView!
    
   
  

    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var textDetailLabel: UITextView!
    
    @IBOutlet weak var subTitle: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ventCardView.clipsToBounds = true
        ventCardView.layer.cornerRadius = 60
        ventCardView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]

        
    }
    var headerString:String? {
        didSet {
            configureView()
        }
    }
    
    var subHeaderString:String? {
        didSet {
            configureViewThree()
        }
    }
    
    var detailString:String? {
        didSet {
            configureViewTwo()
        }
    }
  
    func configureViewTwo() {
        textDetailLabel.text = detailString
        
    }
    
    func configureView() {
        headerLabel.text = headerString
        
    }
    
    func configureViewThree() {
        subTitle.text = subHeaderString
        
    }
    
  

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
