//
//  FriendListTableVC.swift
//  L1 - HW - Farkhshatov Eduard
//
//  Created by Эдуард Фархшатов on 09.04.2020.
//  Copyright © 2020 Эдуард Фархшатов. All rights reserved.
//

import UIKit

@available(iOS 13.0, *)
class FriendListTableVC: UITableViewController {
    
    let myFriends = FriendsFactory.makeFriends()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFriends.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendListCell", for: indexPath) as! FriendListCell
        let friend = myFriends[indexPath.row]
        cell.label.text = friend.name
        cell.avatar.image = friend.avatar
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? FriendPhotoCollectionVC {
            vc.friend = myFriends[tableView.indexPathForSelectedRow!.row]
        }
    }
}

