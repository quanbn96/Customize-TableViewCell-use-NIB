//
//  DataItem.swift
//  CustomizeTableViewCellUseFileXIB
//
//  Created by Quan on 7/11/16.
//  Copyright © 2016 MyStudio. All rights reserved.
//

import UIKit

class DataItem {
    var imageLogo : UIImage!
    var imageStarRating : UIImage!
    var nameFootballClub : String!
    var nameStadium : String!
    
    init(nameFC: String, nameStd: String, imgLogo: String, imgStar: Int) {
        self.imageLogo = UIImage(named: imgLogo)
        self.imageStarRating = UIImage(named: "\(imgStar)stars.png")
        self.nameFootballClub = nameFC
        self.nameStadium = nameStd
    }
    
}
