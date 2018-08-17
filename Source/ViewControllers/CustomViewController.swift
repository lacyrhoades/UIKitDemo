//
//  CustomViewController.swift
//  UIKitDemo
//
//  Created by Lacy Rhoades on 8/16/18.
//  Copyright © 2018 Lacy Rhoades. All rights reserved.
//

import UIKit

class CustomViewController: UIViewController {
    convenience init() {
        // This is all of our customizations in one place
        // Called if we create the ViewController by saying just `CustomViewController()`
        // No storyboard/XIB/XML involved in this path
        
        self.init(nibName: nil, bundle: nil)
        
        self.tabBarItem = UITabBarItem(tabBarSystemItem: .featured, tag: 0)
        
        self.view.backgroundColor = .red
        
        let label = UILabel()
        label.text = "This is CustomViewController.swift"
        label.textColor = .white
        label.textAlignment = .center
        
        label.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(label)
        
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: label, attribute: .topMargin, relatedBy: .equal, toItem: self.view, attribute: .topMargin, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: label, attribute: .bottomMargin, relatedBy: .equal, toItem: self.view, attribute: .bottomMargin, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: label, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: label, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1, constant: 0)
            ])
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        // This is an early point of customization if the controller is loaded from an .xib file
        
        self.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 1)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // This is an early point of customization if the controller is loaded from a .storyboard file
    }
    
    override func viewDidLoad() {
        // This is a later point of customization, no matter how we got here
        // This method always gets called
        // Works for .storyboard files, .xib files and for creating controllers in code
    }
}
