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
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        let tab1 = FirstTabController()
        
        let tab2 = FirstTabController(nibName: "FirstTabController", bundle: nil)
        
        let tab3 = UIStoryboard(name: "FirstTabController", bundle: nil).instantiateInitialViewController()!
        
        //
        // There is no way to do this sort of setup in a XIB file :[
        //
        tab2.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 1)
        
        self.window?.rootViewController = MainTabBarController(tabs: [tab1, tab2, tab3])
        
        self.window?.makeKeyAndVisible()
        
        return true
    }
    
}

