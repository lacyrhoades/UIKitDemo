//
//  CustomSearchController.swift
//  SearchControllerExample
//
//  Created by Lacy Rhoades on 8/22/18.
//  Copyright © 2018 Lacy Rhoades. All rights reserved.
//

import UIKit

class CustomSearchController: UISearchController {
    init() {
        super.init(searchResultsController: nil)
        
        self.searchResultsUpdater = self
        self.hidesNavigationBarDuringPresentation = false
        self.dimsBackgroundDuringPresentation = false
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented - this controller cannot be loaded from a xib or storyboard")
    }
}

extension CustomSearchController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        print("Update search results:", searchController.searchBar.text ?? "Nil")
    }
}
