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

    @IBOutlet weak var chatButton: ABBadgeButton!
    @IBOutlet weak var imageButton: ABBadgeButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        chatButton.titleLabel?.font = UIFont(name: "IcoMoon-Free", size: 30)
        chatButton.setTitle("\u{e96d}", for: .normal)
        chatButton.badgeValue = "5"
        chatButton.setTitleColor(UIColor.white, for: .normal)
    
        imageButton.badgeValue = "10"
        imageButton.badgeBorderColor = UIColor.white.cgColor
        imageButton.badgeOriginOffset = CGPoint(x: 0, y: 12)
        imageButton.badgeFont = UIFont.systemFont(ofSize: 20)
        imageButton.badgeBorderWidth = 2
        imageButton.badgeBackgroundColor = UIColor.purple
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

