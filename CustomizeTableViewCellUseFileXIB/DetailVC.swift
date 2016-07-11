//
//  DetailVC.swift
//  CustomizeTableViewCellUseFileXIB
//
//  Created by Quan on 7/11/16.
//  Copyright © 2016 MyStudio. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    
    
    @IBOutlet weak var imgViewStadium: UIImageView!
    var stringTitle: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.blackColor()
    }
    
    override func viewWillAppear(animated: Bool) {
        self.title = stringTitle
        self.imgViewStadium.image = UIImage(named: "\(stringTitle).jpg")
    }
    
}
