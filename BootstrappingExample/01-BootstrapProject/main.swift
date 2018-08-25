//
//  main.swift
//  BootstrappingExample
//
//  Created by Lacy Rhoades on 8/24/18.
//  Copyright © 2018 Lacy Rhoades. All rights reserved.
//

import UIKit

class CustomApplication: UIApplication {
    override func sendEvent(_ event: UIEvent) {
        super.sendEvent(event)
        
        print("sendEvent:", event)
    }
}

UIApplicationMain(
    CommandLine.argc,
    UnsafeMutableRawPointer(CommandLine.unsafeArgv)
        .bindMemory(
            to: UnsafeMutablePointer<Int8>.self,
            capacity: Int(CommandLine.argc)),
    NSStringFromClass(CustomApplication.self),
    NSStringFromClass(AppDelegate.self)
)
