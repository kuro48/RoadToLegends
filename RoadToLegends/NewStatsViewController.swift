//
//  NewStatsViewController.swift
//  RoadToLegends
//
//  Created by 黒川龍之介 on 2022/03/07.
//

import UIKit

class NewStatsViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var newTable:UITableView!
    @IBOutlet weak var Rank: UITextField!
    @IBOutlet weak var Kill: UITextField!
    @IBOutlet weak var Death: UITextField!
    @IBOutlet weak var Damage: UITextField!
    @IBOutlet weak var RankPoint: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }

}
