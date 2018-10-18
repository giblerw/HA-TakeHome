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
    
// MARK - UITableView DataSource Methods
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

// MARK - UITableView Delegate Methods
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    

}
