//
//  AppDelegate.swift
//  BootstrappingExample
//
//  Created by Lacy Rhoades on 8/24/18.
//  Copyright © 2018 Lacy Rhoades. All rights reserved.
//

import UIKit

class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        let viewController = UIViewController()
        viewController.view.backgroundColor = UIColor.orange
        
        self.window?.rootViewController = viewController
        
        self.window?.makeKeyAndVisible()
        
        return true
    }

}

