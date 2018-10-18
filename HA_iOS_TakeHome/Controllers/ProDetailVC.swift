//
//  ProDetailVC.swift
//  HA_iOS_TakeHome
//
//  Created by Weston Gibler on 10/18/18.
//  Copyright © 2018 Weston Gibler. All rights reserved.
//

import UIKit

class ProDetailVC: UIViewController {

    var proDetails = DataService.instance.getPros()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
