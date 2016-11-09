//
//  ViewController.swift
//  ABBadgeButton
//
//  Created by Alexander Bredy on 11/08/2016.
//  Copyright (c) 2016 Alexander Bredy. All rights reserved.
//

import UIKit
import ABBadgeButton

class ViewController: UIViewController {

    @IBOutlet weak var buttonTest: ABBadgeButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        buttonTest.titleLabel?.font = UIFont(name: "IcoMoon-Free", size: 18)
        buttonTest.setTitle("\u{e910}", for: .normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

