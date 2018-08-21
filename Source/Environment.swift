//
//  Environment.swift
//  UIKitDemo
//
//  Created by Lacy Rhoades on 8/21/18.
//  Copyright © 2018 Lacy Rhoades. All rights reserved.
//

import UIKit

struct Environment {
    // Provides the current date / time
    var date: () -> Date = Date.init
    
    init() { }
    
    func connectServices(toApplication application: UIApplication) {
        // Place to set up initial, permanent relationships
        // self.storageLayer.addListener(firstVC.collectionViewBackend)
    }
}

var Context = Environment()
