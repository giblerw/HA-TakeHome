//
//  ProDetails.swift
//  HA_iOS_TakeHome
//
//  Created by Weston Gibler on 10/18/18.
//  Copyright © 2018 Weston Gibler. All rights reserved.
//

import UIKit

class ProDetailsVC: UIViewController {
    @IBOutlet weak var companyTitleLabel: UILabel!
    
    
    func updateViews(proList: ProListItem) {
        companyTitleLabel.text = proList.companyName
        }
   
}
