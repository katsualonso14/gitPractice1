//
//  ContactCell.swift
//  TableviewFavoriteButtonTest
//
//  Created by 玉井　勝也 on 2021/12/01.
//

import UIKit

class ContactCell: UITableViewCell {
    
    var link: ViewController?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
            //ボタン設定
        let button = UIButton(type: .system)
        let buttonImage = UIImage(named: "heart")
        button.setImage(buttonImage, for: .normal)
        button.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        accessoryView  = button
        button.tintColor = .red
        button.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
    }
    
    @objc private func  tapButton() {
    print("Marking as favorite")
        link!.flag = link!.flag ? false : true
        link?.someMethodIWantToCall(cell: self)
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
