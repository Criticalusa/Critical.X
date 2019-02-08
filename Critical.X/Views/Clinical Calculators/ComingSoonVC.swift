//
//  ComingSoonVC.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 2/5/19.
//  Copyright © 2019 Jadie Barringer III. All rights reserved.
//

import UIKit

class ComingSoonVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func dismissComingSoon(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        print("Coming soon Controller was dismissed")
        
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
