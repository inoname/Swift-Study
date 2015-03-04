//
//  TableVC3.swift
//  02-swift空白程序
//
//  Created by kouliang on 15/2/27.
//  Copyright (c) 2015年 kouliang. All rights reserved.
//


/**
    在 Swift 中，遵守协议的写法和 C++ 中的多继承很像
    在 Swift 中，还有另外一个写法 extension（扩展）

    提示：extension 和 oc 中的分类非常类似，不过可以将某一个协议定义的方法单独抽取出来
    **不过**，extension 中同样不能定义变量
*/


import UIKit

class TableVC3: UIViewController {

    // 懒加载表格，使用了lazy之后需要有配对的设置数值的方法
    lazy var tableView:UITableView?={
        println("懒加载了^^^")
        
        // 注意：内部不能直接使用自己
        let view = UITableView(frame: self.view.bounds, style: UITableViewStyle.Plain)
        
        // 指定表格的数据源方法，此时必须要遵守协议
        view.dataSource = self
        
        return view
        }()
    
    // Person 数组
    lazy var persons: [Person]? = {
        // 实例化数组
        let array = [Person(name: "张三", age: 18),
            Person(name: "张三 - 123", age: 18),
            Person(name: "张三 - 456", age: 18),
            Person(name: "张三 - 789", age: 18)]
        
        return array
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //之所以用! 是因为定义时对象可以为空，而 addSubView 函数不能接 nil，必须要有值
        self.view.addSubview(tableView!)
    }
}

// MARK: - 利用extension做表格数据源扩展
extension TableVC3: UITableViewDataSource {
    
    // 注意：在扩展中，不能包含存储的属性
    //    var str = "张三"
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons!.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell") as? MyCell2
        
        // 如果 cell 不存在，创建一个 cell
        if cell == nil {
            // 实例化一个 cell
            cell = MyCell2(style: .Subtitle, reuseIdentifier: "Cell")
        }
        
        // 设置内容
        cell!.person=persons![indexPath.row]
        
        return cell!
    }
}

// MARK: - 自定义Cell私有类 作用域就在当前文件中！文件外部的类都无法访问
private class MyCell2: UITableViewCell {
    
    // 定义模型
    var person: Person? {
        // didSet 可以做到给属性设置数值之后，去做一些事情
        didSet {
            // 结果会是完整的字符串
            self.textLabel!.text = "\(person!.name!) --- \(person!.age!)"
        }
    }
}
