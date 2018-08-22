//
//  CustomTabBarController.swift
//  SearchControllerExample
//
//  Created by Lacy Rhoades on 8/22/18.
//  Copyright © 2018 Lacy Rhoades. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {
    // Create our first View Controller using CustomViewController.swift
    // This calls `init()`
    let firstVC = CustomNavigationViewController()
    
    // Create a second View Controller using the [...].xib file
    // This calls `init(nibName: String?, bundle: Bundle?)`
    let secondVC = CustomNavigationViewController(nibName: "CustomNavigationViewController", bundle: nil)
    
    // Create a third View Controller using the [...].playground file
    // This calls `init?(coder: NSCoder)`
    // Note how we have to coerce it to be of type CustomViewController
    let thirdVC = UIStoryboard(name: "CustomNavigationViewController", bundle: nil).instantiateInitialViewController() as! CustomNavigationViewController
    
    init() {
        super.init(nibName: nil, bundle: nil)
        
        firstVC.tabBarItem = UITabBarItem(tabBarSystemItem: .featured, tag: 0)
        secondVC.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 1)
        thirdVC.tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 2)
        
        self.viewControllers = [firstVC, secondVC, thirdVC]
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented - this controller cannot be loaded from a xib or storyboard")
    }
}
