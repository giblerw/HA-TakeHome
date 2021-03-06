//
//  DetailVC.swift
//  HA_iOS_TakeHome
//
//  Created by Weston Gibler on 10/18/18.
//  Copyright © 2018 Weston Gibler. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    var selection: ProListItem!
    
    @IBOutlet private weak var companyTitleLabel: UILabel!
    @IBOutlet private weak var specialityLabel: UILabel!
    @IBOutlet private weak var ratingsLabel: UILabel!
    @IBOutlet private weak var locationLabel: UILabel!
    @IBOutlet private weak var servicesLabel: UILabel!
    @IBOutlet private weak var overviewLabel: UILabel!
    
    @IBAction func callButtonClicked(_ sender: Any) {
        print( "phone = \(selection.phoneNumber)")
    }
    
    @IBAction func emailButtonClicked(_ sender: Any) {
        print("email = \(selection.email)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        companyTitleLabel.text = selection.companyName
        specialityLabel.text = selection.specialty
        ratingsLabel.text = updateDetailView(pro: selection)
        locationLabel.text = selection.primaryLocation
        servicesLabel.text = updateServicesView(pro: selection)
        overviewLabel.text = selection.companyOverview
    }
    
    func updateDetailView(pro: ProListItem) -> String {
        let ratingTextString = "Rating: \(pro.compositeRating) | \(pro.ratingCount) rating(s)"
        let ratingRank: Double = Double(pro.compositeRating) ?? 0.0
        if ratingRank > 0.0 {
            return ratingTextString
        } else {
            return "References Available"
            }
        }
    
    func updateServicesView(pro: ProListItem) -> String {
        let services = "\(pro.servicesOffered)"
        if services.count > 0 {
            return services
        } else {
            return "Services Not Available"
            }
        }

}
