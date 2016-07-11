//
//  CustomizeTableViewCell.swift
//  CustomizeTableViewCellUseFileXIB
//
//  Created by Quan on 7/11/16.
//  Copyright © 2016 MyStudio. All rights reserved.
//

import UIKit

class CustomizeTableViewCell: UITableViewCell {

    @IBOutlet weak var imgViewLogo: UIImageView!
    @IBOutlet weak var labelFootballClub: UILabel!
    @IBOutlet weak var labelStadium: UILabel!
    @IBOutlet weak var imgViewStarRating: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
