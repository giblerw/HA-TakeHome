//
//  ProsCell.swift
//  HA_iOS_TakeHome
//
//  Created by Weston Gibler on 10/17/18.
//  Copyright © 2018 Weston Gibler. All rights reserved.
//

import UIKit

class ProsCell: UITableViewCell {

    @IBOutlet weak var prosNameLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    
    func updateViews(proList: ProListItem) {
        prosNameLabel.text = proList.companyName
        ratingLabel.text = "Rating: \(proList.compositeRating) | \(proList.ratingCount) rating(s)"
    }

}
