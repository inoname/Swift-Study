//
//  ViewController.swift
//  01-swift语法
//
//  Created by kouliang on 15/2/27.
//  Copyright (c) 2015年 kouliang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // 测试单例
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        let net = SingleInstance.sharedInstance
        
        for _ in 0...9 {
            dispatch_async(dispatch_get_global_queue(0, 0), { () -> Void in
                
                // 证明println 本身就是异步的，性能比 NSLog 要高很多
                println(NSThread.currentThread().isMainThread)
                
                var n = SingleInstance.sharedInstance
                assert(n === net)
            })
        }
    }
    
}
