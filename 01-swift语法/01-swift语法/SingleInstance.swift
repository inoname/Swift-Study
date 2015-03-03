//
//  SingleInstance.swift
//  01-swift语法
//
//  Created by kouliang on 15/3/2.
//  Copyright (c) 2015年 kouliang. All rights reserved.
//

import UIKit

class SingleInstance{
    
    // 单例概念
    // 1.内存中有一个唯一的实例
    // 2.提供唯一的全局访问入口 SingleInstance.sharedInstance
    
    
    // 在 swift 1.2 之前， class var 不能存储变量
    // static 不能放在 class 内部
    // 从 1.2 开始，static let 可以放在 class 内部
    // static 是静态成员，是什么时候加载的？
    /**
    启动时就加载：饿汉式
    需要时才加载：懒汉式
    在 Swift 1.2 中，要实现单例，只需要这一句话，而且是懒汉式的！
    */
    
    // 用let定义常量，在Swift中let是线程安全的
    static let sharedInstance = SingleInstance()
    
    init() {
        println("实例化")
    }

}
