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
    
    // Create our first View Controller using CustomViewController.swift
    // This calls `init()`
    let firstVC: CustomViewController = CustomViewController()
    
    // Create a second View Controller using the [...].xib file
    // This calls `init(nibName: String?, bundle: Bundle?)`
    let secondVC: CustomViewController = CustomViewController(nibName: "CustomViewController", bundle: nil)
    
    // Create a third View Controller using the [...].playground file
    // This calls `init?(coder: NSCoder)`
    // Note how we have to coerce it to be of type CustomViewController
    let thirdVC: CustomViewController = UIStoryboard(name: "CustomViewController", bundle: nil).instantiateInitialViewController() as! CustomViewController
    
    init() {
        launchView = UIStoryboard(name: "LaunchScreen", bundle: nil).instantiateInitialViewController()!.view
        super.init(nibName: nil, bundle: nil)
        
        self.viewControllers = [firstVC, secondVC, thirdVC]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(launchView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented - this controller cannot be loaded from a xib or storyboard")
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
