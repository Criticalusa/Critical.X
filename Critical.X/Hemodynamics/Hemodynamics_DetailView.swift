//
//  Hemodynamics_DetailView.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 2/2/19.
//  Copyright © 2019 Jadie Barringer III. All rights reserved.
//

import UIKit


class Hemodynamics_DetailView: UIViewController {
    var titleString_hemodynamics = String()
    var subTitle_hemodynamics = String()
    var descriptionString_hemodynamics = String()

    
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var subtitle_Hemodynamics: UILabel!
    @IBOutlet weak var hemoDynamics_Scroller: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = titleString_hemodynamics
        subtitle_Hemodynamics.text = subTitle_hemodynamics
        detailDescriptionLabel.text = descriptionString_hemodynamics
        // Do any additional setup after loading the view.
    }
    
    @IBAction func dismissHemodynamicsDetail(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        print("Hemodynamic Detail ViewView Controller was dismissed")
        
    }
    // Call the function in the viewDidAppear
    override func viewDidAppear(_ animated: Bool) {
        // Calling the function
        setScrollViewContentSize()
    }
    
    
    // Heres the dynamic scrollFunction where we find the size of the dynamic label and set the scrollView to it.
    func setScrollViewContentSize() {
        
        var height: CGFloat
        let lastView = self.hemoDynamics_Scroller.subviews[0].subviews.last!
        
        print(lastView.debugDescription) // should be what you expect
        
        // The label thats being dynamic
        let lastViewYPos = detailDescriptionLabel.convert(lastView.frame.origin, to: nil).y  // this is absolute positioning, not relative
        
        // Add all the labels here.
        let lastViewHeight = detailDescriptionLabel.frame.size.height
        
        // sanity check on these
        print(lastViewYPos)
        print(lastViewHeight)
        
        // Final height of the scrollView
        
        height = lastViewYPos + lastViewHeight
        
        print("setting scroll height: \(height)")
        
        // Setting the scollview to the final height.
        hemoDynamics_Scroller.contentSize.height = height
    }
}
