//
//  containerFastVC.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 1/13/19.
//  Copyright © 2019 Jadie Barringer III. All rights reserved.
//

import UIKit

class containerFastVC: UIViewController {
    @IBOutlet weak var physiologyImage: UIImageView!
    @IBOutlet weak var pathoPhysImage: UIImageView!
    
    var physStillImage: String = ""
    var pathoImage: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        guard let img = physiologyImage else {
            
            physiologyImage.image = UIImage(named: physStillImage)
            print(pathoImage)
            return  }
      
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
