//
//  AsyncTask.swift
//  01-swift语法
//
//  Created by kouliang on 15/3/6.
//  Copyright (c) 2015年 kouliang. All rights reserved.
//

import UIKit

class AsyncTask: NSObject {
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
}
