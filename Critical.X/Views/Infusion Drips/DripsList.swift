//
//  DripsList.swift
//  Critical Drips
//
//  Created by Admin on 10/02/2018.
//  Copyright © 2018 Jadie Barringer III. All rights reserved.
//

import UIKit
import AKLabel

class DripsList: UITableViewController {
    
    
    //Outlet labels for the animation which has the AKLabel subclass.
    @IBOutlet weak var dripSubTitle: AKLabel!

    // Variable to pass data
    private var Dripslist = [Any]()
    
    
    //MARK: ViewWillAppear to animate Labels
    override func viewDidAppear(_ animated: Bool) {
        
  
        super.viewWillAppear(true)
      
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        // Clears the text when the view dissappears so it doesnt look bad when reloading
        dripSubTitle.text = ""
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Drips"
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        
        // Animates the title when the screen loads.
        dripSubTitle.animate(text: "Infusion Rates and Calculations", duration: 1, completion: nil)

        
        
        if ((UserDefaults.standard.object(forKey:"drip_list")) != nil) {
            Dripslist = (UserDefaults.standard.object(forKey:"drip_list") as! NSArray) as! [Any]
        }
        
        else {
            let path: String? = Bundle.main.path(forResource: "Calculator", ofType: "plist")
            
            Dripslist = NSArray(contentsOfFile: path!) as! [Any]
            
            
            UserDefaults.standard.set(Dripslist, forKey: "drip_list")
            
            UserDefaults.standard.synchronize()
        }
       
        self.tableView.reloadData()
    }
    
    @IBAction func ResetClick(_ sender: Any) {
        let path: String! = Bundle.main.path(forResource: "Calculator", ofType: "plist")
        Dripslist = NSArray(contentsOfFile: path) as! [Any]
        
        
        UserDefaults.standard.set(Dripslist, forKey: "drip_list")
        
        UserDefaults.standard.synchronize()
        
        self.tableView.reloadData()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Dripslist.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! DripCell
        
        cell.lblTitle.text = (Dripslist[indexPath.row] as AnyObject).object(forKey: "maintitle") as? String
        cell.lblPropofol.text = (Dripslist[indexPath.row] as AnyObject).object(forKey: "BrandName") as? String
        
        let minValue = (Dripslist[indexPath.row] as AnyObject).object(forKey: "min") as! String
        let maxValue = (Dripslist[indexPath.row] as AnyObject).object(forKey: "max") as! String
        let Unit = (Dripslist[indexPath.row] as AnyObject).object(forKey: "unit") as! String
        
        cell.lbl_DoseAmount.text = minValue + " - " + maxValue + " " + Unit
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "CriticalDrips") as! CriticalDrips
        controller.index = indexPath.row
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70.0;
    }
    
    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "EditDrip") as! EditDrip
        controller.index = indexPath.row
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        return "Update\nDosages"
    }
    
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

