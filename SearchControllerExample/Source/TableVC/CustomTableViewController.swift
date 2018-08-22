//
//  CustomTableViewController.swift
//  SearchControllerExample
//
//  Created by Lacy Rhoades on 8/22/18.
//  Copyright © 2018 Lacy Rhoades. All rights reserved.
//

import UIKit

class CustomTableViewController: UITableViewController {
    
    init() {
        super.init(nibName: nil, bundle: nil)
        
        let searchController = CustomSearchController()
        self.navigationItem.searchController = searchController
        self.navigationItem.hidesSearchBarWhenScrolling = false
        
        self.title = "Controllers From Swift (with no Interface Builder)"
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
        
        let searchController = CustomSearchController()
        self.navigationItem.searchController = searchController
        self.navigationItem.hidesSearchBarWhenScrolling = false
        
        self.title = "From XIB File"
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let searchController = CustomSearchController()
        self.navigationItem.searchController = searchController
        self.navigationItem.hidesSearchBarWhenScrolling = false
    }
}
