//
//  ViewController.swift
//  gitPractice
//
//  Created by 玉井　勝也 on 2020/07/03.
//  Copyright © 2020 katsuya tamai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBAction func pushButton(_ sender: Any) {
        label.text = "a"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

