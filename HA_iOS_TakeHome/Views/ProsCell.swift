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
         let ratingTextString = "Rating: \(proList.compositeRating) | \(proList.ratingCount) rating(s)"
        guard let ratingRank = Double(proList.compositeRating) else { return }
       
        switch ratingRank {
        case 0:
            ratingLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            ratingLabel.text = "References Available"
        case 1..<3.0:
            ratingLabel.text = ratingTextString
            ratingLabel.textColor = #colorLiteral(red: 0.7647058964, green: 0.2383460997, blue: 0.2243335623, alpha: 1)
        case 3..<4:
            ratingLabel.text = ratingTextString
            ratingLabel.textColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        case 4...:
            ratingLabel.text = ratingTextString
            ratingLabel.textColor = #colorLiteral(red: 0.09945433747, green: 0.7647058964, blue: 0.2298767669, alpha: 1)
        default:
            ratingLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            ratingLabel.text = "References Available"
        }
        prosNameLabel.text = proList.companyName
    }
}
