//
//  Details.swift
//  HA_iOS_TakeHome
//
//  Created by Weston Gibler on 10/18/18.
//  Copyright © 2018 Weston Gibler. All rights reserved.
//

import UIKit

class Details: UIView {

    @IBOutlet weak var companyTitleLabel: UILabel!
    
    func populateDetails(pro: ProListItem) {
        companyTitleLabel.text = pro.companyName
    }
   

}
