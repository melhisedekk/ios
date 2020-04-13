//
//  Groups.swift
//  L1 - HW - Farkhshatov Eduard
//
//  Created by Эдуард Фархшатов on 09.04.2020.
//  Copyright © 2020 Эдуард Фархшатов. All rights reserved.
//

import UIKit

struct Group  {
    let title: String
    let logo: UIImage
}

final class GroupFactory {
    static func makeGroups() -> [Group] {
        if #available(iOS 13.0, *) {
            return [
                Group(title: "Protoss", logo: UIImage(named: "avatar_1")!),
                Group(title: "Terrain", logo: UIImage(named: "avatar_2")!),
                Group(title: "Zerg", logo: UIImage(named: "avatar_3")!),
                Group(title: "Group1", logo: UIImage(named: "avatar_1")!),
                Group(title: "Group2", logo: UIImage(named: "avatar_2")!),
                Group(title: "Group3", logo: UIImage(systemName: "tv")!)
            ]
        } else {
            return [
                Group(title: "Protoss", logo: UIImage(named: "avatar_1")!),
                Group(title: "Terrain", logo: UIImage(named: "avatar_2")!),
                Group(title: "Zerg", logo: UIImage(named: "avatar_3")!),
                Group(title: "Group1", logo: UIImage(named: "avatar_1")!),
                Group(title: "Group2", logo: UIImage(named: "avatar_2")!)
            ]
        }
    }
}


extension Group : Equatable {
    static func == (lhs: Group, rhs: Group) -> Bool {
        lhs.title == rhs.title && lhs.logo == rhs.logo
    }
}
