//
//  BrimoTableViewCell.swift
//  brimoTableViewForGradient
//
//  Created by David on 2015/2/24.
//  Copyright (c) 2015年 David. All rights reserved.
//

import UIKit

class BrimoTableViewCell: UITableViewCell {
  
    
    @IBOutlet var helloImage: UIImageView!
    
    @IBOutlet var backGroungView: UIView!
    
    @IBOutlet var profileImage: UIImageView!
    
    @IBOutlet var UserName: UILabel!
    @IBOutlet var postDate: UILabel!
    
    @IBOutlet var categoryImage: UIImageView!
    @IBOutlet var shareInfo: UILabel!
    @IBOutlet var locationPinImage: UIImageView!
    @IBOutlet var locationInfo: UILabel!
    
    
    @IBOutlet var separatorLine: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        println("enter custom cell nib")
        
        // selection setting
        self.selectionStyle = UITableViewCellSelectionStyle.None
        
        // profile image setting
        self.profileImage.layer.borderColor = UIColor.whiteColor().CGColor
        self.profileImage.layer.cornerRadius = 20.0
        self.profileImage.layer.borderWidth = 2.0
        self.profileImage.layer.masksToBounds = true
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
