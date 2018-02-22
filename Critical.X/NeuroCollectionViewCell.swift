//
//  NeuroCollectionViewCell.swift
//  Neuro
//
//  Created by Jadie Barringer III on 1/25/18.
//  Copyright © 2018 Jadie Barringer III. All rights reserved.
//

import UIKit
import Foundation

class NeuroCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var neuroCellImage: UIImageView!
    
    @IBOutlet weak var neuroCellLabel: UILabel!

    override var bounds: CGRect {
        didSet {
            self.layoutIfNeeded()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.neuroCellImage.layer.masksToBounds = true
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.setCircularImageView()
    }
    
    func setCircularImageView() {
        self.neuroCellImage.layer.cornerRadius = CGFloat(roundf(Float(self.neuroCellImage.frame.size.width / 2.0)))
    }
    
}

