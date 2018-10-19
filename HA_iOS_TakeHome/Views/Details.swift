//
//  Details.swift
//  HA_iOS_TakeHome
//
//  Created by Weston Gibler on 10/18/18.
//  Copyright © 2018 Weston Gibler. All rights reserved.
//

import UIKit

class Details: UIView {

   
    
   
    func updateDetailView(pro: ProListItem) -> String {
        let ratingTextString = "Rating: \(pro.compositeRating) | \(pro.ratingCount) rating(s)"
        guard let ratingRank = Double(pro.compositeRating) else { return "References Available"}
        
        if ratingRank > 0.0 {
            return ratingTextString
        } else {
            return "References Available"
        }
        
        

    }

}
