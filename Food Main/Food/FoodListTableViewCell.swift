//
//  FoodListTableViewCell.swift
//  Food
//
//  Created by My App Templates Team on 07/09/14.
//  Copyright (c) 2014 MyAppTemplates. All rights reserved.
//

import UIKit

class FoodListTableViewCell: UITableViewCell {

    @IBOutlet var imgIcon : UIImageView!
    @IBOutlet var foodTitle : UILabel!
    @IBOutlet var foodSubTitle : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = UITableViewCellSelectionStyle.None
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
