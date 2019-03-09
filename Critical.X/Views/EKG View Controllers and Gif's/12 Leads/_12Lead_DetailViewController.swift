//
//  _12Lead_DetailViewController.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 3/9/19.
//  Copyright © 2019 Jadie Barringer III. All rights reserved.
//

import UIKit



class _12Lead_DetailViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var imageScroller: UIScrollView!
    
    @IBOutlet weak var imageView1: UIImageView!
    
    @IBOutlet weak var titleLabelDetail: UILabel!
    
    @IBOutlet weak var scrollHeight: NSLayoutConstraint!
    
    @IBOutlet weak var descriptionLabel: UILabel!


    @IBOutlet weak var closeButton: UIButton! {
        // Takes the button and makes it into a circle
        didSet {closeButton.layer.cornerRadius = closeButton.frame.size.width / 2 }
    }
    
    
    //MARK: - Gloabl Variables to be passed
    
    var titleString = String()
    var DescriptionString_1: NSAttributedString? = nil

    var imageString: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageScroller.delegate = self
        
        update12LeadInfomation()
     

    }
    
    //Helper Function
    func update12LeadInfomation()  {
        // Set the descripTtion Label
        descriptionLabel.attributedText = DescriptionString_1
        
        //SEt the image to the string
        imageView1.image = UIImage(named: imageString)
        
        // SEt the title label to the titleString
        titleLabelDetail.text = titleString
        
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        /// Takes the scroll height outlet for the view, and adds it the the labels that are in the view. Pads it about  300 pixels at the end to compensate for the screen thats above it because its staring below the image view.
        scrollHeight.constant = descriptionLabel.frame.origin.y + descriptionLabel.frame.size.height +  380
        
        
        print("\(descriptionLabel.frame.size.height) Height constraint Value")
        
    }

    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView1
    }
    
    @IBAction func dismiss(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        print("12Lead DetailVC was dismissed")
        
    }

}
