//
//  ModeViewController.swift
//  RoadToLegends
//
//  Created by 黒川龍之介 on 2022/03/08.
//

import UIKit

class ModeViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    var mode:[String] = ["トリオ","デュオ","ランク","アリーナ","アリーナランク"]
    @IBOutlet weak var modeTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        modeTable.delegate = self
        modeTable.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mode.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = modeTable.dequeueReusableCell(withIdentifier: "ModeCell", for: indexPath)
        
        cell.textLabel!.text = mode[indexPath.row]
        
        return cell
    }

}
