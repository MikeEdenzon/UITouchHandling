//
//  ViewController.swift
//  UITouchHandling
//
//  Created by Michael Edenzon on 4/2/17.
//  Copyright © 2017 Michael Edenzon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(InteractiveView(frame: view.frame))
    }

    override var shouldAutorotate: Bool {
        
        return false
    }
    
    override var prefersStatusBarHidden: Bool {
        
        return true
    }
}

