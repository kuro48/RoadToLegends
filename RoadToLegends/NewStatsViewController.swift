//
//  NewStatsViewController.swift
//  RoadToLegends
//
//  Created by 黒川龍之介 on 2022/03/07.
//

import UIKit

class NewStatsViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    var tableItem:[String] = ["モード","レジェンド","武器1","武器2"]
    
    @IBOutlet weak var newTable:UITableView!
    @IBOutlet weak var Rank: UITextField!
    @IBOutlet weak var Kill: UITextField!
    @IBOutlet weak var Death: UITextField!
    @IBOutlet weak var Damage: UITextField!
    @IBOutlet weak var RankPoint: UITextField!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        newTable.delegate = self
        newTable.dataSource = self

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableItem.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        newTable.rowHeight = 60
        let cell = newTable.dequeueReusableCell(withIdentifier: "NewTableCell", for: indexPath) as? NewTableCell
        
        cell!.newTitle.text = tableItem[indexPath.row]
        
        return cell!
    }
    
    @IBAction func back(){
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func add(){
        
    }

}
