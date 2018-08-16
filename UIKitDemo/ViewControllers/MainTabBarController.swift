//
//  MainTabBarController.swift
//  UIKitDemo
//
//  Created by Lacy Rhoades on 8/16/18.
//  Copyright © 2018 Lacy Rhoades. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    var launchView: UIView
    
    init(tabs: [UIViewController]) {
        launchView = UIStoryboard(name: "LaunchScreen", bundle: nil).instantiateInitialViewController()!.view
        super.init(nibName: nil, bundle: nil)
        self.viewControllers = tabs
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(launchView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 3.0, animations: {
            self.launchView.alpha = 0.0
            self.launchView.transform = CGAffineTransform.init(scaleX: 6.0, y: 6.0)
        }) { (done) in
            if done {
                self.launchView.removeFromSuperview()
            }
        }
    }
}

