//
//  MainTableViewController.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 10/23/17.
//  Copyright © 2017 Jadie Barringer III. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController{
    
  
    
    var HomeScreenTitleArray: [String] = []
    var HomeScreenDetailArray: [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        HomeScreenTitleArray = ["About Critical", "Airway Management", "ACLS / EKG's","Fluids and Blood Products", "Hemodynamics", "Labratory Values","IABP Monitoring", "Neuro","NRP","Obstetrics","References","Special Procedures","Ventilator Management"]
        
        HomeScreenDetailArray = ["Rate Critical, Email us, Disclaimer info", "Intubation, Difficult Airway Algorithms", "Algorithms and EKG's","FFP, RBC, 0.9%", "Hemodynamic Ranges, Swan Ganz, Shock", "CMP, CBC, LFT's Cardiac Enzymes","IABP timing & complications", "Neuro assessment, Stroke","NRP Algorithms","Fetal Heart monitoring","Calculators, Medical Spanish","Imaging, Central Lines, Arterial Lines","ABG analysis, Vent settings"]
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

 

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return HomeScreenTitleArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        // Configure the cell...
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as UITableViewCell
        
        cell.textLabel?.text = HomeScreenTitleArray [indexPath.row]
        cell.detailTextLabel?.text = HomeScreenDetailArray [indexPath.row]
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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
