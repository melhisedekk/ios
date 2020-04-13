//
//  Friend.swift
//  L1 - HW - Farkhshatov Eduard
//
//  Created by Эдуард Фархшатов on 09.04.2020.
//  Copyright © 2020 Эдуард Фархшатов. All rights reserved.
//

import UIKit

struct Friend {
    let name: String
    let avatar: UIImage
    let photos: [UIImage]
}


final class FriendsFactory {
    static func makeFriends() -> [Friend] {
        let archone = Friend(name: "Arcone", avatar: UIImage(named: "archone_1")!, photos: [
            UIImage(named:"archone_2")!,
            UIImage(named:"archone_3")!
        ])
        let zealot = Friend(name: "Zealot", avatar: UIImage(named: "zealot_1")!, photos: [
            UIImage(named:"zealot_2")!,
            UIImage(named:"zealot_3")!
        ])
        let koloss = Friend(name: "Koloss", avatar: UIImage(named: "koloss_1")!, photos: [
            UIImage(named:"koloss_2")!,
            UIImage(named:"koloss_3")!
        ])
        let probe = Friend(name: "Probe", avatar: UIImage(named: "probe_1")!, photos: [
            UIImage(named:"probe_2")!,
            UIImage(named:"probe_3")!
        ])
        return [archone, zealot, koloss, probe]
    }
}

