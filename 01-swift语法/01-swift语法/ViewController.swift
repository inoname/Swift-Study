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
        
        doSomthing2 { (str) -> () in
            println(str+"---\(NSThread.currentThread())")
        }
    }
    
    // 定义闭包类型， 注意类型别名的首字母要大写
    typealias Completion = (str:String)->()
    func doSomthing2(completion:Completion) {
        
        // 耗时操作在后台执行
        // 尾随闭包
        dispatch_async(dispatch_get_global_queue(0, 0)) {
            println("努力工作中---\(NSThread.currentThread())")
            NSThread.sleepForTimeInterval(1.0)
            
            let jsonData="返回的数据"
            dispatch_async(dispatch_get_main_queue()) {
                completion(str: jsonData)
            }
        }
    }
    
    // 函数的定义 func 函数名 (参数) -> (返回值)
    // 如果把函数当成参数 func 可以省略
    // 在 swift 中，gcd 可以完美的融合
    func doSomthing(completion:(msg: String)->()) {
        
        // 耗时操作在后台执行
        dispatch_async(dispatch_get_global_queue(0, 0), { () -> Void in
            println("玩命工作中...\(NSThread.currentThread())")
            
            NSThread.sleepForTimeInterval(1.0)
            
            // 主线程更新 UI
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                // 执行回调
                completion(msg: "完成！")
            })
        })
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
