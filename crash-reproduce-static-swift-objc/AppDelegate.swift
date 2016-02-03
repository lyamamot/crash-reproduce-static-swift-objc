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
        // Access the global variable once from swift.
        let firstAccess = k_str
        // Then create an NSURLRequest.
        let request = NSURLRequest(URL: NSURL())
        // Then try to access the global variable again.
        let secondAccess = k_str

        return true
    }

}

