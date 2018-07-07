//
//  MenMenuCollectionViewCell.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 7/6/18.
//  Copyright © 2018 Jadie Barringer III. All rights reserved.
//

import UIKit

class MenMenuCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var mainMenu_CellImage: UIImageView!
    
    @IBOutlet weak var mainMenu_CellLabel: UILabel!
    
    @IBOutlet weak var mainMenuDetail_CellLabel: UILabel!

    
    override var bounds: CGRect {
        didSet {
            self.layoutIfNeeded()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.mainMenu_CellImage.layer.masksToBounds = true
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.setCircularImageView()
        //self.setShadows()
    }
    
    func setCircularImageView() {
        self.mainMenu_CellImage.layer.cornerRadius = CGFloat(roundf(Float(self.mainMenu_CellImage.frame.size.width / 2.0)))
    }
    
    func setShadows() -> Void {
        
    }
    
}


    

