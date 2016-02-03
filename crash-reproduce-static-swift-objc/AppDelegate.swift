//
//  AppDelegate.swift
//  crash-reproduce-static-swift-objc
//
//  Created by Thomas Harada on 2/2/16.
//  Copyright © 2016 NCR. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        AClass.createNSMutableStringAndAssignToRandomStaticLocation()
        // Access the global variable once from Swift.
        let _ = k_str
        // Then allocate some memory.
        let _ = []
        // CRASH: Then try to access the global variable again.
        let _ = k_str

        return true
    }
}

