//
//  Circle.swift
//  UITouchHandling
//
//  Created by Michael Edenzon on 4/2/17.
//  Copyright © 2017 Michael Edenzon. All rights reserved.
//

import Foundation
import UIKit

class Circle: UIView {
    
    private var highlighted = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    convenience init(center: CGPoint, radius: CGFloat, color: UIColor) {
        self.init(frame: CGRect(x: center.x - radius, y: center.y - radius, width: radius * 2, height: radius * 2))
        self.backgroundColor = color
        self.layer.cornerRadius = self.frame.height / 2
    }
    
    public func highlight() {
        highlighted = !highlighted
        if highlighted {
            self.backgroundColor = UIColor.green
        } else {
            self.backgroundColor = UIColor.red
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
