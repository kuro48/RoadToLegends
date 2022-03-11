//
//  StatsTableViewController.swift
//  RoadToLegends
//
//  Created by 黒川龍之介 on 2022/03/07.
//

import UIKit
import RealmSwift

class StatsTableViewController: UIViewController, UITableViewDelegate ,UITableViewDataSource {

    @IBOutlet weak var statsTable: UITableView!
    
    let realm = try! Realm()
    let stats = Stats()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statsTable.delegate = self
        statsTable.dataSource = self

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return realm.objects(Stats.self).count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = statsTable.dequeueReusableCell(withIdentifier: "StatsCell", for: indexPath)
        cell.textLabel?.text = stats.rank
        
        return cell
    }

}
