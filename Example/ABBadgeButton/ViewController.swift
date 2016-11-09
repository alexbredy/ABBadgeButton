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
    @IBOutlet weak var textButton: ABBadgeButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "BADGE BUTTON DEMO"
        
        textButton.badgeValue = "1"
        textButton.badgeBackgroundColor = UIColor.blue
        
        chatButton.titleLabel?.font = UIFont(name: "IcoMoon-Free", size: 30)
        chatButton.setTitle("\u{e96d}", for: .normal)
        chatButton.badgeValue = "5"
        chatButton.setTitleColor(UIColor.white, for: .normal)
        chatButton.badgeOriginOffset = CGPoint(x: -5, y: 5)
    
        imageButton.badgeValue = "10"
        imageButton.badgeBorderColor = UIColor.white.cgColor
        imageButton.badgeOriginOffset = CGPoint(x: 0, y: 12)
        imageButton.badgeFont = UIFont.systemFont(ofSize: 20)
        imageButton.badgeBorderWidth = 2
        imageButton.badgeBackgroundColor = UIColor.purple
        
        let smileyButton = ABBadgeButton(type: .system)
        smileyButton.frame = CGRect(x: 0, y: 0, width: 24, height: 24)
        smileyButton.titleLabel?.font = UIFont(name: "IcoMoon-Free", size: 24)
        smileyButton.setTitle("\u{e9e9}", for: .normal)
        smileyButton.setTitleColor(UIColor.white, for: .normal)
        smileyButton.badgeValue = "9"
        smileyButton.addTarget(self, action: #selector(didSelectBarButton), for: .touchUpInside)
        
        let barButton = UIBarButtonItem(customView: smileyButton)
        
        navigationItem.rightBarButtonItem = barButton
    }
    
    func didSelectBarButton(){
        print("button clicked")
    }

}

