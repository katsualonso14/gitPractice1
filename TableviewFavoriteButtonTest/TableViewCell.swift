//
//  TableViewCell.swift
//  TableviewFavoriteButtonTest
//
//  Created by 玉井　勝也 on 2021/11/30.
//

import UIKit

class TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .red
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
