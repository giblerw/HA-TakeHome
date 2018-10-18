//
//  Pros.swift
//  HA_iOS_TakeHome
//
//  Created by Weston Gibler on 10/17/18.
//  Copyright © 2018 Weston Gibler. All rights reserved.
//

import Foundation

struct ProListItem {
    private(set) public var entityId: String
    private(set) public var companyName: String
    private(set) public var ratingCount: String
    private(set) public var compositeRating: String
    
    init(entityId: String, companyName: String, ratingCount: String, compositeRating: String) {
        self.entityId = entityId
        self.companyName = companyName
        self.ratingCount = ratingCount
        self.compositeRating = compositeRating
    }
}
