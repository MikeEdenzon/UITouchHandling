//
//  InteractiveView.swift
//  UITouchHandling
//
//  Created by Michael Edenzon on 4/2/17.
//  Copyright © 2017 Michael Edenzon. All rights reserved.
//

import Foundation
import UIKit

class InteractiveView: UIView {
    
    var circle: Circle!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.white
        circle = Circle(center: self.center, radius: self.frame.width / 10, color: UIColor.red)
        self.addSubview(circle)
    }
    
    func translation(from p1: CGPoint, to p2: CGPoint) ->CGAffineTransform {
        return CGAffineTransform(translationX: p2.x - p1.x, y: p2.y - p1.y)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        circle.highlight()
        for touch in touches {
            circle.transform = translation(from: circle.center, to: touch.preciseLocation(in: self))
        }
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            circle.transform = translation(from: circle.center, to: touch.preciseLocation(in: self))
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        circle.highlight()
        circle.transform = translation(from: circle.center, to: self.center)
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        circle.highlight()
        circle.transform = translation(from: circle.center, to: self.center)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
