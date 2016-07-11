//
//  MasterTableVC.swift
//  CustomizeTableViewCellUseFileXIB
//
//  Created by Quan on 7/11/16.
//  Copyright © 2016 MyStudio. All rights reserved.
//

import UIKit

class MasterTableVC: UITableViewController {
    
    var arrayData : [DataItem]!
    var detailVC : DetailVC!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.registerNib(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "Cell")
        
        let item1: DataItem =  DataItem.init(nameFC: "Manchester United", nameStd: "Old Trafford", imgLogo: "MU.png", imgStar: 5)
        let item2: DataItem = DataItem.init(nameFC: "Chelsea", nameStd: "Stamford Bridge", imgLogo: "Chelsea.png", imgStar: 4)
        let item3: DataItem = DataItem.init(nameFC: "Arsenal", nameStd: "Emirates", imgLogo: "Arsenal.png", imgStar: 4)
        let item4: DataItem = DataItem.init(nameFC: "Manchester City", nameStd: "Etihad", imgLogo: "MC.png", imgStar: 3)
        let item5: DataItem = DataItem.init(nameFC: "Liverpool", nameStd: "Anfield", imgLogo: "Liverpool.png", imgStar: 2)
        
        arrayData = [item1, item2, item3, item4, item5]

    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayData.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell : CustomizeTableViewCell! = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! CustomizeTableViewCell
        
        let item : DataItem = arrayData[indexPath.row]
        cell.imgViewLogo.image = item.imageLogo
        cell.imgViewStarRating.image = item.imageStarRating
        cell.labelFootballClub.text = item.nameFootballClub
        cell.labelStadium.text = item.nameStadium
        return cell
    }
 
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 90
    }
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let imgview : UIImageView = UIImageView(image: UIImage(named: "EPL Banner.jpg"))
        return imgview
    }
    
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100
    }
    
    override func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let imgview : UIImageView = UIImageView(image: UIImage(named: "EPL.jpg"))
        imgview.contentMode = .ScaleAspectFit
        return imgview
    }
    
    override func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 120
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if detailVC == nil {
            detailVC = self.storyboard?.instantiateViewControllerWithIdentifier("DetailVC") as! DetailVC
        }
        let item = arrayData[indexPath.row]
        detailVC.stringTitle = item.nameStadium
        self.navigationController?.pushViewController(self.detailVC, animated: true)
    }

}
