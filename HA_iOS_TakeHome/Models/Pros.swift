//
//  Pros.swift
//  HA_iOS_TakeHome
//
//  Created by Weston Gibler on 10/17/18.
//  Copyright © 2018 Weston Gibler. All rights reserved.
//
import Foundation

struct ProListItem: Codable {
    private(set) public var entityId: String
    private(set) public var companyName: String
    private(set) public var ratingCount: String
    private(set) public var compositeRating: String
    private(set) public var companyOverview: String
    private(set) public var phoneNumber: String
    private(set) public var servicesOffered: String
    private(set) public var specialty: String
    private(set) public var primaryLocation: String
    private(set) public var email: String
    
    init(entityId: String, companyName: String, ratingCount: String, compositeRating: String, companyOverview: String, phoneNumber: String, servicesOffered: String, specialty: String, primaryLocation: String, email: String) {
        self.entityId = entityId
        self.companyName = companyName
        self.ratingCount = ratingCount
        self.compositeRating = compositeRating
        self.companyOverview = companyOverview
        self.phoneNumber = phoneNumber
        self.servicesOffered = servicesOffered
        self.specialty = specialty
        self.primaryLocation = primaryLocation
        self.email = email
    }
}
