//
//  ViewController.swift
//  RoadToLegends
//
//  Created by 黒川龍之介 on 2022/03/06.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {
    @IBOutlet weak var TotalDamage: UILabel!
    @IBOutlet weak var TotalKill: UILabel!
    
    let realm = try! Realm()
    var statsList: Results<Stats>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor =  UIColor.black
        self.statsList = realm.objects(Stats.self)
        let sumDamage: Int = statsList.sum(ofProperty: "damage")
        let sumKill: Int = statsList.sum(ofProperty: "kill")
        
        TotalDamage.text = String(sumDamage)
        TotalKill.text = String(sumKill)

    }
    
    override func viewWillAppear(_ animated: Bool) {
//        let sumDamage: Int = statsList.sum(ofProperty: "damage")
//        let sumKill: Int = statsList.sum(ofProperty: "kill")
//        TotalDamage.text = String(sumDamage)
//        TotalKill.text = String(sumKill)
        
        self.TotalKill.reloadInputViews()
        self.TotalDamage.reloadInputViews()
    }
    
}

