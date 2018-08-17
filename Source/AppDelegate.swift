//
//  AppDelegate.swift
//  UIKitDemo
//
//  Created by Lacy Rhoades on 8/14/18.
//  Copyright © 2018 Lacy Rhoades. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        // Create tab 1 using CustomViewController.swift
        // This calls `init()`
        let tab1 = CustomViewController()
        
        // Create tab 2 using the [...].xib file
        // This calls `init(nibName: String?, bundle: Bundle?)`
        let tab2 = CustomViewController(nibName: "CustomViewController", bundle: nil)
        
        // There is no way to do this sort of setup in a XIB file :[
        tab2.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 1)
        
        // Create tab 3 using the [...].playground file
        // This calls `init?(coder: NSCoder)`
        let tab3 = UIStoryboard(name: "CustomViewController", bundle: nil).instantiateInitialViewController()!
        
        // Set up a tab bar view controller across the whole "screen"
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = MainTabBarController(tabs: [tab1, tab2, tab3])
        self.window?.makeKeyAndVisible()
        
        return true
    }
    
}

