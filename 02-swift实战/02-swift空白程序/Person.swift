//
//  Person.swift
//  02-swift空白程序
//
//  Created by kouliang on 15/2/27.
//  Copyright (c) 2015年 kouliang. All rights reserved.
//



/**
    当我们需要使用注释的时候，直接使用 /// 即可

    构造函数：

    － 默认会提供一个 init 的构造函数，外部调用的时候直接通过 () 就可以调用
    - 如果实现了构造函数，默认的 init 构造函数就没有了，在实例化对象的时候，就需要使用指定的构造函数
    － 可以编写多个构造函数
    - swift中参数类型一致，参数名称不一样也可以重载
*/

import UIKit

/// 个人类
class Person {
    /// 姓名
    var name: NSString?
    /// 年龄
    var age: Int?
    /// 头衔
    var title: NSString?
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    /// 构造函数直接设置姓名
    init(name: String) {
        self.name = name
        // 指定了一个默认数值
        self.age = 0
    }
    
    /// 构造函数直接设置头衔
    init(title: String) {
        self.title = title
    }
}