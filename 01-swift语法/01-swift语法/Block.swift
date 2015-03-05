//
//  Block.swift
//  01-swift语法
//
//  Created by kouliang on 15/3/5.
//  Copyright (c) 2015年 kouliang. All rights reserved.
//

/**
    Swift 中的闭包同样会对外部变量进行强引用,用一下方式处理self消除循环引用
    weak var weakSelf = self


    在 swift 中使用 deinit函数来判断闭包的循环引用
*/
import UIKit

class Block: UIViewController {
    
    override func viewDidLoad() {
        // 提示：weak 变量必须是 var，不能使用 let
        weak var weakSelf = self
        // block
        /*
            obj.completion={
                weakSelf...
                ...
            }
        */
    }

    deinit {
        println("没有循环引用")
    }
}
