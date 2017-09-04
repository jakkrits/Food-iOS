//
//  CategoryTableViewCell.swift
//  Food
//
//  Created by My App Templates Team on 07/09/14.
//  Copyright (c) 2014 MyAppTemplates. All rights reserved.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {

    @IBOutlet var imgIcon : UIImageView!
    @IBOutlet var categoryTitle : UILabel!
    @IBOutlet var totalNumber: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
