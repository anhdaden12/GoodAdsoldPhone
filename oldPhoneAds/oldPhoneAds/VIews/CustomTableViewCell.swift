//
//  CustomTableViewCell.swift
//  oldPhoneAds
//
//  Created by Apple on 11/11/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    
    
    override var bounds: CGRect {
        didSet {
            self.layoutIfNeeded()
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()

      
    }
    
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
       
        imageView?.layer.masksToBounds = true
              self.imageview.layer.cornerRadius = CGFloat(roundf(Float(self.imageview.frame.size.width / 2.0)))
        
    }

}
