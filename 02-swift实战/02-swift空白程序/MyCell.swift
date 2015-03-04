//
//  MyCell.swift
//  02-swift空白程序
//
//  Created by kouliang on 15/2/27.
//  Copyright (c) 2015年 kouliang. All rights reserved.
//

import UIKit

class MyCell: UITableViewCell {

    // 定义模型
    var person: Person? {
        // didSet 可以做到给属性设置数值之后，去做一些事情
        didSet {
            println("设置数值后")
            // self.textLabel?.text = person!.name as? String
            
            // 结果会有 optional
            // self.textLabel!.text = "\(person!.name)"
            
            // 结果会是完整的字符串
            self.textLabel!.text = "\(person!.name!)"
        }
    }
    
    
    // getter & setter 在 swift 中如何写呢？
    // 以下写法在 swift 中几乎不用，只要知道就好！
    // 懒加载 lazy 解决了 getter 的问题
    // didSet 解决了 setter 的问题
    var _title: String?
    var title: String? {
        get {
            return _title;
        }
        set {
            // swift 中 newValue 就是新设置的值
            _title = newValue
        }
    }


}
