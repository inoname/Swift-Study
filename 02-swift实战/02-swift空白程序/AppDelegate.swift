//
//  AppDelegate.swift
//  02-swift空白程序
//
//  Created by kouliang on 15/2/27.
//  Copyright (c) 2015年 kouliang. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    // 后面的 ?，因为只定义了变量的类型，并没有实例化
    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        // 实例化窗口
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        // window! 表示 window 一定存在了
        // 提示 window? 虽然也可以，但是不建议使用！
        window!.backgroundColor = UIColor.redColor()
        
        // 设置根视图控制器
        window!.rootViewController = TableVC3()
        
        // 让窗口可见
        window!.makeKeyAndVisible()
        return true
    }
}

