//
//  AppDelegate.swift
//  SearchControllerExample
//
//  Created by Lacy Rhoades on 8/22/18.
//  Copyright © 2018 Lacy Rhoades. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = CustomTabBarController()
        self.window?.makeKeyAndVisible()
        
        return true
    }

}

