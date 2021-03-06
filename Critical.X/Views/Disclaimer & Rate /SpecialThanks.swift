//
//  SpecialThanks.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 7/13/18.
//  Copyright © 2018 Jadie Barringer III. All rights reserved.
//

import UIKit
import AKLabel

class SpecialThanks: UIViewController {

    
    @IBOutlet weak var thankYouLabel: AKLabel!
    override func viewDidLoad() {
        super.viewDidLoad()
   
        thankYouLabel.animate(text: "The Barringer Group & Critical Team would like to extend a sincere and special thank you to all of those that gave amazing feedback, suggestions, and ideas that helped contribute to the success of this great application.\n\nSpecial Thanks\n\nLudys Barringer, Esq.\nSteve A. Teitelman, RN\nDane Taylor, FP-C\nDr. Sean Johnson, M.D.\nDr. Joanelle Bailey, M.D.\nDoug Fuller, FP-C\nDr. Richard Levitan, M.D.\nJoseph Schilli, FP-C\nAllen Wolfe, RN", duration: 4, completion: nil)
       
        // Do any additional setup after loading the view.
    }
    
    @IBAction func dismissSpecialThanks(_ sender: AnyObject) {
      
            
            dismiss(animated: true, completion: nil)
            print("View Controller was dismissed")
            
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
