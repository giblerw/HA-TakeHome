//
//  DataService.swift
//  HA_iOS_TakeHome
//
//  Created by Weston Gibler on 10/17/18.
//  Copyright © 2018 Weston Gibler. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let proList = [
        ProListItem(entityId: "1222893113", companyName: "Summit Preservation, LLC", ratingCount: "7", compositeRating: "5.0"),
        ProListItem(entityId: "1351000593", companyName: "Weekend Warrior Home Services", ratingCount: "3", compositeRating: "3.94"),
        ProListItem(entityId: "1437997085", companyName: "S.K. Concepts, LLC", ratingCount: "0", compositeRating: "0.0"),
        ProListItem(entityId: "2412488969", companyName: "Through The Fog Remodeling", ratingCount: "1", compositeRating: "5.0"),
        ProListItem(entityId: "5645301920", companyName: "GATworks, LLC", ratingCount: "15", compositeRating: "4.97"),
        ProListItem(entityId: "6452154715", companyName: "Winshine Window Washing, LLC", ratingCount: "2", compositeRating: "3.0"),
        ProListItem(entityId: "8925290810", companyName: "Local-Air", ratingCount: "79", compositeRating: "3.79"),
        ProListItem(entityId: "2249746472", companyName: "Denver Ducts Corp.", ratingCount: "43", compositeRating: "2.53"),
        ProListItem(entityId: "1722809125", companyName: "Let There Be Light", ratingCount: "25", compositeRating: "4.85"),
        ProListItem(entityId: "9453405616", companyName: "M & J Carpet and Air Duct Cleaning Service", ratingCount: "1", compositeRating: "4.67"),
        ProListItem(entityId: "5059743465", companyName: "Pipecraft Plumbing, Inc.", ratingCount: "4", compositeRating: "2.0"),
        ProListItem(entityId: "5475000890", companyName: "Blea Mechanical Services", ratingCount: "3", compositeRating: "5.0"),
        ProListItem(entityId: "5803803218", companyName: "The Worm Drain Cleaning", ratingCount: "0", compositeRating: "0.0"),
        ProListItem(entityId: "1266659753", companyName: "AAA Service Plumbing, Inc.", ratingCount: "179", compositeRating: "4.59"),
        ProListItem(entityId: "5366977300", companyName: "Rocky Mountain Hot Jetting Services, Inc.", ratingCount: "8", compositeRating: "4.77"),
        ProListItem(entityId: "5790219775", companyName: "Brookhaven Handyman", ratingCount: "66", compositeRating: "3.67"),
        ProListItem(entityId: "4669847998", companyName: "Nailed IT Construction Services", ratingCount: "2", compositeRating: "5.0"),
        ProListItem(entityId: "2356150364", companyName: "Fratellanza Landscaping and Land Care", ratingCount: "4", compositeRating: "4.83"),
        ProListItem(entityId: "3338708244", companyName: "Bright Painting, Inc.", ratingCount: "11", compositeRating: "4.97"),
        ProListItem(entityId: "4541281426", companyName: "Total Maintenance", ratingCount: "10", compositeRating: "4.28"),
    ]
    
    func getPros() -> [ProListItem] {
        return proList
    }
}
