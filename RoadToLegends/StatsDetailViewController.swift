//
//  StatsDetailViewController.swift
//  RoadToLegends
//
//  Created by 黒川龍之介 on 2022/03/07.
//

import UIKit
import RealmSwift

class StatsDetailViewController: UIViewController {
    
    let realm = try! Realm()
    var statsList: Stats!

    @IBOutlet weak var Rank: UILabel!
    @IBOutlet weak var Mode: UILabel!
    @IBOutlet weak var Kill: UILabel!
    @IBOutlet weak var Damage: UILabel!
    @IBOutlet weak var Death: UILabel!
    @IBOutlet weak var FirstWeapon: UILabel!
    @IBOutlet weak var SecondWeapon: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Rank.text = statsList.rank
        Mode.text = statsList.mode
        Kill.text = String(statsList.kill)
        Damage.text = String(statsList.damage)
        Death.text = String(statsList.death)
        FirstWeapon.text = statsList.weapon1
        SecondWeapon.text = statsList.weapon2
        
    }
    
   @IBAction func back(){
//        self.navigationController?.popViewController(animated: true)
       dismiss(animated: true)
    }
    
}
