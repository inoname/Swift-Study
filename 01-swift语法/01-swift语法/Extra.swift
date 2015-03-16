//
//  Extra.swift
//  01-swift语法
//
//  Created by kouliang on 15/3/3.
//  Copyright (c) 2015年 kouliang. All rights reserved.
//


/**
    1.OC中传一个类用：    [className class]
      swift中传一个类用： className.self

    2.println 本身就是异步的，性能比 NSLog 要高很多

    3.swift中类的完整名称是 “命名空间+类名”，因此swift中不需要类前缀

    4.swift中用到方法时不再需要SEL，直接写字符串就可以


    5. === 判断两个对象是否指向相同的内存地址
       ==  判断两个值是否相等

    6.在FrameWork项目中，不支持桥接文件（可以通过改成静态库实现）

    7.多项目协同开发时，工具类一定要有一个public的init方法

    8.swift中延时执行的代码

    let delay = 2.0 * Double(NSEC_PER_SEC)
    let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
    dispatch_after(time, dispatch_get_main_queue(), {println("todo something")})








----------------几个关键字-------------------

    1.Swift中，如果希望让类动态调用协议方法，需要使用 @objc 的关键字
        @objc protocol DictModelProtocol {
        static func customeClassMapping() -> [String: String]?
        }

    2.mutating 表示函数操作的字典是可变类型的
        extension Dictionary {
            mutating func merge<K, V>(dict: [K: V]) {
                for (k, v) in dict {
                    // 字典的分类方法中，如果要使用 updateValue，需要明确的指定类型
                    self.updateValue(v as! Value, forKey: k as! Key)
                }
            }
        }

    3.协议的方法覆盖init函数时需要required关键字
        //自定义对象归档实现 NSCoding 协议
        required init(coder decoder: NSCoder) {}

    4.convenience 不是主构造函数，简化的构造函数，必须调用默认的构造函数
        convenience init(pkId: Int) {
            //...
            self.init()
        }


*/
