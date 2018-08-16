//
//  CustomViewController.swift
//  UIKitDemo
//
//  Created by Lacy Rhoades on 8/16/18.
//  Copyright © 2018 Lacy Rhoades. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {
    init(tabs: [UIViewController]) {
        super.init(nibName: nil, bundle: nil)
        self.viewControllers = tabs
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
