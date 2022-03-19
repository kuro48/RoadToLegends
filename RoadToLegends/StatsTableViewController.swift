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
    var statsList: Results<Stats>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statsTable.delegate = self
        statsTable.dataSource = self
        
        self.statsList = realm.objects(Stats.self)
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
     
        self.statsTable.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return realm.objects(Stats.self).count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  self.statsTable.dequeueReusableCell(withIdentifier: "StatsCell", for: indexPath)
        let stats = self.statsList[indexPath.row]
        cell.textLabel?.text = stats.rank
        cell.textLabel?.textColor = UIColor.white
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail" {
            if let indexPath = statsTable.indexPathForSelectedRow {
                guard let destination = segue.destination as? StatsDetailViewController else {
                    fatalError("Failed to prepare StatsDetailViewController.")
                }
                
                destination.statsList = statsList[indexPath.row]
            }
        }
    }

}
