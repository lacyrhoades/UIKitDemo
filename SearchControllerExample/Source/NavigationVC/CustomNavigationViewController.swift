//
//  CustomNavigationViewController.swift
//  SearchControllerExample
//
//  Created by Lacy Rhoades on 8/22/18.
//  Copyright © 2018 Lacy Rhoades. All rights reserved.
//

import UIKit

class CustomNavigationViewController: UINavigationController {
    init() {
        super.init(nibName: nil, bundle: nil)
        
        let tableVC = CustomTableViewController()
        
        self.viewControllers = [tableVC]
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        let tableVC = CustomTableViewController(nibName: "CustomTableViewController", bundle: nil)

        self.viewControllers = [tableVC]
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
