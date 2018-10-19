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
    
    var  currentCellData: ProListItem?
    var pros : [ProListItem] = []
    
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
            print("oops")
            return ProsCell()
        }
    }
    

// MARK - UITableView Delegate Methods
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "detailSegue", sender: indexPath)
        tableView.deselectRow(at: indexPath, animated: true)
}
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        if segue.identifier == "detailSegue" {
            let pros = DataService.instance.getPros()
            if let dest = segue.destination as? DetailVC, let index = sender as? IndexPath {
                dest.selection = pros[index.row]
        }
       
        }
        
    }
    
}

