//
//  ABBadgeButton.swift
//  Goodwall
//
//  Created by Alexander Bredy on 11/08/2016.
//  Copyright (c) 2016 Alexander Bredy. All rights reserved.
//

import UIKit

open class ABBadgeButton: UIButton {
    
    fileprivate var badge: UILabel
    
    open var badgeValue: String = ""{
        didSet{
            setBadgeText(badgeValue)
        }
    }
    
    open var badgeInsets: CGFloat = 6{
        didSet{
            setBadgeText(badgeValue)
        }
    }
    
    open var badgeOriginOffset: CGPoint = CGPoint(x: -5, y: 5){
        didSet{
            setBadgeText(badgeValue)
        }
    }
    
    open var badgeBorderColor: CGColor?{
        didSet{
            updateBadgeStyle()
        }
    }
    
    open var badgeBorderWidth: CGFloat = 0{
        didSet{
            updateBadgeStyle()
        }
    }
    
    open var badgeBackgroundColor: UIColor = UIColor.red{
        didSet{
            updateBadgeStyle()
        }
    }
    
    open var badgeTextColor: UIColor = UIColor.white{
        didSet{
            updateBadgeStyle()
        }
    }
    
    open var badgeFont: UIFont = UIFont.systemFont(ofSize: 12){
        didSet{
            setBadgeText(badgeValue)
        }
    }
    
    override public init(frame: CGRect) {
        badge = UILabel()
        super.init(frame: frame)
        setBadgeText("")
    }
    
    required public init?(coder aDecoder: NSCoder) {
        badge = UILabel()
        super.init(coder: aDecoder)
        setBadgeText("")
    }
    
    /*
     * Update the UI style of the badge (colors, borders, alignment and font)
     */
    fileprivate func updateBadgeStyle(){
        badge.textAlignment = NSTextAlignment.center
        badge.backgroundColor = badgeBackgroundColor
        badge.textColor = badgeTextColor
        badge.layer.borderWidth = badgeBorderWidth
        badge.layer.borderColor = badgeBorderColor
    }
    
    /*
     * Calculates the badge frame based on the badgeValue and badgeInsets properties
     */
    fileprivate func setBadgeText(_ text: String) {
        badge.text = text
        badge.font = badgeFont
        badge.clipsToBounds = true
        badge.sizeToFit()
        
        let badgeHeight = badge.frame.height + badgeInsets
        let minBadgeWidth = badge.bounds.size.width + badgeInsets
        
        var frame = badge.frame
        frame.size.height = badgeHeight
        frame.size.width = minBadgeWidth < badgeHeight ? badgeHeight : minBadgeWidth
        
        let origin: CGPoint = CGPoint(x: (self.frame.width - frame.width/2) + badgeOriginOffset.x, y: (-frame.size.height/2) + badgeOriginOffset.y)
        
        badge.frame = CGRect(origin: origin, size: frame.size)
        badge.layer.cornerRadius = badgeHeight / 2
        
        updateBadgeStyle()
        
        addSubview(badge)
        badge.layer.zPosition = 9999
        badge.isHidden = (text.characters.count == 0)
    }
}
