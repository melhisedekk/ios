//
//  AllGroupsTableVC.swift
//  L1 - HW - Farkhshatov Eduard
//
//  Created by Эдуард Фархшатов on 09.04.2020.
//  Copyright © 2020 Эдуард Фархшатов. All rights reserved.
//

import UIKit

class AllGroupsTableVC: UITableViewController {

    let allGroups = GroupFactory.makeGroups()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allGroups.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AllGroupsTV_Cell", for: indexPath) as! AllGroupsTV_Cell
        let group = allGroups[indexPath.row]
        cell.AllGroupTV_CellName.text = group.title
        cell.AllGroupTV_CellImage.image = group.logo
        
        return cell
    }


 

}
