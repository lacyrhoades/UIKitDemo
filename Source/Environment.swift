//
//  Environment.swift
//  UIKitDemo
//
//  Created by Lacy Rhoades on 8/21/18.
//  Copyright © 2018 Lacy Rhoades. All rights reserved.
//

import UIKit

struct Environment {
    // Provides the current date / time
    var date: () -> Date = Date.init
    
    // Create our first View Controller using CustomViewController.swift
    // This calls `init()`
    let firstVC = CustomViewController()
    
    // Create a second View Controller using the [...].xib file
    // This calls `init(nibName: String?, bundle: Bundle?)`
    let secondVC = CustomViewController(nibName: "CustomViewController", bundle: nil)
    
    // Create a third View Controller using the [...].playground file
    // This calls `init?(coder: NSCoder)`
    let thirdVC = UIStoryboard(name: "CustomViewController", bundle: nil).instantiateInitialViewController()!
    
    // Holds all the tabs in our main interface
    var mainViewController: UIViewController
    
    init() {
        mainViewController = CustomTabBarController(tabs: [firstVC, secondVC, thirdVC])
    }
    
    func connectServices(toApplication application: UIApplication) {
        // Place to set up initial, permanent relationships
        // self.storageLayer.addListener(firstVC.collectionViewBackend)
    }
}

var Context = Environment()
