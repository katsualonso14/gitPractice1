//
//  ViewController.swift
//  TableviewFavoriteButtonTest
//
//  Created by 玉井　勝也 on 2021/11/30.
//

import UIKit

class ViewController: UITableViewController {

    
    let cellID = "cellID"
    let name = ["a","b", "c", "d", "e","f","g"]
    var flag = false
    
    func someMethodIWantToCall(cell: UITableViewCell) {
        
        guard let indexPathTapped = tableView.indexPath(for: cell) else
        {return}
//        print(indexPathTapped)
        let cellName = name[indexPathTapped.row]
        print(cellName)
        tableView.reloadRows(at: [indexPathTapped], with: .fade)
        print("flag is \(flag)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        flag = false
        tableView.register(ContactCell.self, forCellReuseIdentifier: cellID)
        
    }
    //セルの数
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    //セルの幅
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    //セルの中身
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! ContactCell
        cell.link = self
        
        cell.accessoryView?.tintColor = flag ? .red : .gray
        
        let name = self.name[indexPath.row]
        cell.textLabel?.text = name
        return cell
        
    }
    
  
}
