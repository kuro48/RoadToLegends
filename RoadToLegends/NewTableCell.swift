//
//  NewTableCellTableViewCell.swift
//  RoadToLegends
//
//  Created by 黒川龍之介 on 2022/03/08.
//

import UIKit

class NewTableCell: UITableViewCell {

    @IBOutlet weak var newTitle: UILabel!
    @IBOutlet weak var newContent: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
