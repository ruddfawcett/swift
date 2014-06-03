//
//  AppDelegate.swift
//  swift
//
//  Created by Rudd Fawcett on 6/2/14.
//  Copyright (c) 2014 Rudd Fawcett. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
                            
    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: NSDictionary?) -> Bool {
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        // Override point for customization after application launch.
        
        UIApplication.sharedApplication().setStatusBarStyle(UIStatusBarStyle.LightContent, animated: Bool.false)
        
        let navigationController : DemoNavigationController = DemoNavigationController(rootViewController: DemoTableViewController(style: UITableViewStyle.Grouped))
        
        self.window!.rootViewController = navigationController
        
        self.window!.backgroundColor = UIColor.whiteColor()
        self.window!.makeKeyAndVisible()
        return true
    }
}
