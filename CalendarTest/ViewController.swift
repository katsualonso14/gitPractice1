//
//  ViewController.swift
//  CalendarTest
//
//  Created by 玉井　勝也 on 2021/11/09.
//

import UIKit
import FSCalendar

class ViewController: UIViewController {

    fileprivate weak var calendar: FSCalendar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // In loadView or viewDidLoad
        let calendar = FSCalendar(frame: CGRect(x: 0, y: 0, width: 320, height: 300))
        calendar.dataSource = self
        calendar.delegate = self
        calendar.register(FSCalendarCell.self, forCellReuseIdentifier: "CELL")
        //Auto Layout以前に使われていた制約を解除しないといけない
        calendar.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(calendar)
        
        //レイアウト制約
        calendar.centerYAnchor.constraint(equalTo: view.topAnchor, constant: 250).isActive = true
        calendar.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        calendar.heightAnchor.constraint(equalToConstant: 275).isActive = true
        calendar.widthAnchor.constraint(equalToConstant: view.frame.width - 40).isActive = true
        
        self.calendar = calendar
    }
    
}

extension ViewController: FSCalendarDelegate, FSCalendarDataSource {

    
    func calendar(_ calendar: FSCalendar, cellFor date: Date, at position: FSCalendarMonthPosition) -> FSCalendarCell {
        let cell = calendar.dequeueReusableCell(withIdentifier: "CELL", for: date, at: position)
        return cell
    }
}
