//
//  DripsList.swift
//  Critical Drips
//
//  Created by Admin on 10/02/2018.
//  Copyright © 2018 Jadie Barringer III. All rights reserved.
//

import UIKit
private let cellIdentifier = "cell"

class PharmacologyList: UITableViewController {
    
    //public var data = [AnyHashable: Any]()
    private var datalist = [Any]()
    var filteredLists = [Any]()
//    public var data = [AnyHashable: Any]()

    let searchController = UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search medications"
        searchController.searchBar.barTintColor = .white
            //UIColor(hue:0.554, saturation:0.336, brightness:0.502, alpha:1.00)
        searchController.searchBar.tintColor = .white
            //UIColor(hue:0.554, saturation:0.336, brightness:0.502, alpha:1.000)
        navigationItem.searchController = searchController
        definesPresentationContext = true
        
        //The following makes text and buttons in the searchbar white:
        searchController.searchBar.barStyle = .black

        
        let path: String? = Bundle.main.path(forResource: "Pharmacology", ofType: "plist")
        datalist = NSArray(contentsOfFile: path ?? "") as! [Any]? ?? [Any]()
        
        self.navigationItem.title = "Critical Meds"
//        datalist = data["values"] as! [Any]

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if isFiltering() {
            return filteredLists.count
        }
        
        return datalist.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        

        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! PharmacologyCell
        
        var data = NSDictionary()
        if isFiltering() {
            data = filteredLists[indexPath.row] as! NSDictionary
        } else {
            data = datalist[indexPath.row] as! NSDictionary
        }

        
        cell.lblTitle.text = data.object(forKey: "MainTitle") as? String
        cell.lblPropofol.text = data.object(forKey: "BrandName") as? String
        cell.lbl_DoseAmount.text = data.object(forKey: "Dose") as? String
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let object = segue.destination
        if (object is CriticalPharmacology) {
            let view = object as? CriticalPharmacology
            let row: Int? = self.tableView.indexPathForSelectedRow?.row
//            view?.index = row!
            if isFiltering() {
                view?.info = filteredLists[row!] as! [AnyHashable : Any]
            } else {
                view?.info = datalist[row!] as! [AnyHashable : Any]
            }
        }
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "showDetail" {
//            let detailViewController = segue.destination as? CriticalPharmacology
//            let myIndexPath: IndexPath? = tableView?.indexPathsForSelectedItems?[0]
//            detailViewController?.data = datalist[(myIndexPath?.row)!] as! [AnyHashable : Any]
//        }
//    }
    
   
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let controller = self.storyboard?.instantiateViewController(withIdentifier: "CriticalPharmacology") as! CriticalPharmacology
//        controller.index = indexPath.row
//        self.navigationController?.pushViewController(controller, animated: true)
        self.performSegue(withIdentifier: "Info", sender: nil)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70.0;
    }
    
    
   
   
    
    func isFiltering() -> Bool {
        return searchController.isActive && !searchBarIsEmpty()
    }
    
    func searchBarIsEmpty() -> Bool {
        // Returns true if the text is empty or nil
        return searchController.searchBar.text?.isEmpty ?? true
    }
    
    func filterContentForSearchText(_ searchText: String, scope: String = "All") {
        
        filteredLists = datalist.filter({(item : Any) -> Bool in
            let data = item as! NSDictionary
            let mainTitle = data.object(forKey: "MainTitle") as? String
            let subTitle = data.object(forKey: "BrandName") as? String
            
            return (mainTitle!.lowercased().contains(searchText.lowercased()) || subTitle!.lowercased().contains(searchText.lowercased()))
        })
        
        tableView.reloadData()
    }
    
}

extension PharmacologyList: UISearchResultsUpdating {
    // MARK: - UISearchResultsUpdating Delegate
    func updateSearchResults(for searchController: UISearchController) {
        filterContentForSearchText(searchController.searchBar.text!)
    }
    
}
