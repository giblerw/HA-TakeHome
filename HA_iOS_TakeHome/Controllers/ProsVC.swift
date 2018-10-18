//
//  ProsVC.swift
//  HA_iOS_TakeHome
//
//  Created by Weston Gibler on 10/17/18.
//  Copyright © 2018 Weston Gibler. All rights reserved.
//

import UIKit

class ProsVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
  
    @IBOutlet weak var prosTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prosTable.dataSource = self
        prosTable.delegate = self
       
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getPros().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ProCell") as? ProsCell {
            let pro = DataService.instance.getPros()[indexPath.row]
            cell.updateViews(proList: pro)
            return cell
        } else {
            return ProsCell()
        }
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
