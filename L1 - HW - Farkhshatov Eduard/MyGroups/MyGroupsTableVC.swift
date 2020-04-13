//
//  MyGroupsTableVC.swift
//  L1 - HW - Farkhshatov Eduard
//
//  Created by Эдуард Фархшатов on 09.04.2020.
//  Copyright © 2020 Эдуард Фархшатов. All rights reserved.
//

import UIKit

class MyGroupsTableVC: UITableViewController {
    
    var myGroups = [Group]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myGroups.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyGroupsTV_Cell", for: indexPath)
        
        cell.textLabel?.text = myGroups[indexPath.row].title
        cell.imageView?.image = myGroups[indexPath.row].logo
        return cell
    }
    
    
    
    
    @IBAction func addGroup(segue: UIStoryboardSegue) {
        if segue.identifier == "addGroup" {
            let allGroupsTableVC = segue.source as! AllGroupsTableVC
            if let indexPath = allGroupsTableVC.tableView.indexPathForSelectedRow {
                let group = allGroupsTableVC.allGroups[indexPath.row]
                                if !myGroups.contains(group){
                                    myGroups.append(group)
                                    tableView.reloadData()
                                }
            }
        }
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            myGroups.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
}
