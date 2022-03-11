//
//  Stats.swift
//  RoadToLegends
//
//  Created by 黒川龍之介 on 2022/03/09.
//

import UIKit
import RealmSwift
import Foundation
 
class Stats: Object {
    @objc dynamic var mode: String = ""
    @objc dynamic var legends: String = ""
    @objc dynamic var weapon1: String = ""
    @objc dynamic var weapon2: String = ""
    @objc dynamic var rank: String = ""
    @objc dynamic var kill: Int = 0
    @objc dynamic var death: Int = 0
    @objc dynamic var damage: Int = 0
    @objc dynamic var rankPoint: Int = 0
}
