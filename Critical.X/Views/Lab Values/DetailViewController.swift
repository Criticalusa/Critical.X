//
//  DetailViewController.swift
//  LabValues
//
//  Created by Admin on 31/01/2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var LabSkeletonImage: UIImageView!
    @IBOutlet var DetailImage: UIImageView!
    @IBOutlet var DetailTitleLabel: UILabel!
    @IBOutlet var DetailDescriptionLabel: UILabel!
    @IBOutlet var DetailSummaryLabel: UILabel!
    
    @IBOutlet var tableView: UITableView!
    
    public var data = [AnyHashable: Any]()
    private var datalist = [Any]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(data)
        
        navigationItem.title = data["title"] as? String
        DetailTitleLabel.text = (data["title"] as! String)
        DetailImage.image = UIImage(named: data["image"] as! String)
        
        if let skeleton = data["skeletonImage"] as? String {
            LabSkeletonImage.image = UIImage(named: skeleton)
        }
        
        DetailDescriptionLabel.text = data["fulltitle"] as? String
        DetailDescriptionLabel.textColor = UIColor.red
        
        DetailSummaryLabel.text = data["summary"] as? String
        DetailSummaryLabel.numberOfLines = 0
        DetailSummaryLabel.sizeToFit()
        
        tableView.frame = CGRect(x: tableView.frame.origin.x, y: DetailSummaryLabel.frame.origin.y + DetailSummaryLabel.frame.size.height + 10, width: tableView.frame.size.width, height: self.view.frame.size.height - (DetailSummaryLabel.frame.origin.y + DetailSummaryLabel.frame.size.height + 100))
        
        datalist = data["values"] as! [Any]
        DetailImage.layer.cornerRadius = 30.0
        
        
        // half the radius of the image
        DetailImage.layer.masksToBounds = true
        DetailImage.layer.borderColor = UIColor.white.cgColor
        DetailImage.layer.borderWidth = 0.2
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datalist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "cell"
        //this is set in the storyboard for cell identifier
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! TableCell
        
        let data = datalist[indexPath.row] as! NSDictionary
        
        cell.CellTitleLabel.text = data.object(forKey: "title") as? String
        cell.CellDescriptLabel.text = data.object(forKey: "description") as? String
        cell.CellUnitsLabel.text = data.object(forKey: "unit") as? String
        cell.CellValueLabel.text = data.object(forKey: "value") as? String
        cell.CellTitleLabel.font = UIFont(name: "HelveticaNeue-Light", size: 16.0)
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let object = segue.destination
        if (object is MoreDetailViewController) {
            let view = object as? MoreDetailViewController
            let row: Int? = tableView.indexPathForSelectedRow?.row
            view?.info = datalist[row!] as! [AnyHashable : Any]
        }
    }
    
}
