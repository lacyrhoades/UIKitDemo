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
        
        Context.connectServices(toApplication: application)
                
        // Set up a tab bar view controller across the whole "screen"
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = MainTabBarController()
        self.window?.makeKeyAndVisible()
        
        return true
    }
    
}
