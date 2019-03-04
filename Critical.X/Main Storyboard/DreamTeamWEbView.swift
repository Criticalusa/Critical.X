//
//  DreamTeamWEbView.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 2/25/19.
//  Copyright © 2019 Jadie Barringer III. All rights reserved.
//

import UIKit
import WebKit

class DreamTeamWEbView: UIViewController {

    @IBOutlet weak var dreamWEbView: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.dream-critical.com")
        
        dreamWEbView.load(URLRequest(url: url!))

        // Do any additional setup after loading the view.
    }
    @IBAction func dismissDream(_ sender: Any) {
        
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
