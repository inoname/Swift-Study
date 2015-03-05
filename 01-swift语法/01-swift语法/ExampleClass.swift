//
//  ExampleClass.swift
//  01-swift语法
//
//  Created by kouliang on 15/3/5.
//  Copyright (c) 2015年 kouliang. All rights reserved.
//


/**

    用deinit 实现 OC 中的 dealloc 功能

    如果要打印对象信息，OC 中的 description，在 swift 中需要遵守协议 DebugPrintable
*/

import UIKit

class ExampleClass: NSObject {
    
    
    // static修饰的变量可以存储内容
    static var imageCachePath = "com.imagecache"
    
    // class修饰的变量不可以村粗内容，但是可以返回数值
    class var path:String  {
        return "path"
    }
    
    
    
    
// MARK:-  dealloc
    deinit {
        println("没有循环引用")
    }
   
}


// MARK: - description
///  如果要打印对象信息，OC 中的 description，在 swift 中需要遵守协议 DebugPrintable
extension ExampleClass: DebugPrintable {
    
    override var debugDescription: String {
        let dict = self.dictionaryWithValuesForKeys(["access_token", "expiresDate", "uid"])
        return "\(dict)"
    }
}
