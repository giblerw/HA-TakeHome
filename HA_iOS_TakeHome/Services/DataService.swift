//
//  DataService.swift
//  HA_iOS_TakeHome
//
//  Created by Weston Gibler on 10/17/18.
//  Copyright © 2018 Weston Gibler. All rights reserved.
//
import UIKit
import SwiftyJSON

class DataService {
    static let instance = DataService()

    func getPros() -> [ProListItem] {
        var proArray: [ProListItem] = []
        if let dataPath = Bundle.main.path(forResource: "pro_data", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: dataPath), options: .alwaysMapped)
                if let jsonObj = try? JSON(data: data) {
                    for item in jsonObj["pros"].arrayValue {
                        let entityId = item["entityId"].stringValue
                        let companyName = item["companyName"].stringValue
                        let ratingCount = item["ratingCount"].stringValue
                        let compositeRating = item["compositeRating"].stringValue
                        let companyOverview = item["companyOverview"].stringValue
                        let phoneNumber = item["phoneNumber"].stringValue
                        let servicesOffered = item["servicesOffered"].stringValue
                        let specialty = item["specialty"].stringValue
                        let primaryLocation = item["primaryLocation"].stringValue
                        let email = item["email"].stringValue
                        let pro = ProListItem(entityId: entityId, companyName: companyName, ratingCount: ratingCount, compositeRating: compositeRating, companyOverview: companyOverview, phoneNumber: phoneNumber, servicesOffered: servicesOffered, specialty: specialty, primaryLocation: primaryLocation, email: email)
                        proArray.append(pro)
                    }
                }
            } catch {
                print("error: parsing failure")
            }
        } else {
            print("error: invalid filepath")
        }
        return proArray.sorted(by: {$0.companyName < $1.companyName})
    }

}

