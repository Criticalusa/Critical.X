//
//  Peds_ViewController.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 11/1/17.
//  Copyright © 2017 Jadie Barringer III. All rights reserved.
//

import UIKit

class Peds_ViewController: UIViewController {
    ///MARK: Outlets
    
    @IBOutlet weak var PedsUIView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PedsUIView.layer.cornerRadius = 5

        // Do any additional setup after loading the view.
    }

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
