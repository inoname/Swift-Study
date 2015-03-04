//
//  TableVC2.swift
//  02-swift空白程序
//
//  Created by kouliang on 15/2/27.
//  Copyright (c) 2015年 kouliang. All rights reserved.
//



/**
    在 UIViewController 上添加一个 UITableView

    在 swift 中要遵守协议，可以直接用 "," 写协议名称即可，这种格式和 C++ 中的多继承非常类似！

    面试题：
    OC中有多继承吗？-> 没有
    如果没有用什么实现？-> 代理

    *在 oc 中，无论是指定代理或者遵守协议，一旦遗漏，只是出现一个警告！
    *在 swift 中，一个都不能少，少了就不能跑！
*/


/**
在移动开发中懒加载是无处不在的！
swift中使用lazy关键字，实现懒加载。
注意：使用了lazy之后需要有配对的设置数值的方法
*/

import UIKit

class TableVC2: UIViewController,UITableViewDataSource {

    // 懒加载表格，使用了lazy之后需要有配对的设置数值的方法
    lazy var tableView:UITableView?={
        println("懒加载了^^^")
        
        // 注意：内部不能直接使用自己
        let view = UITableView(frame: self.view.bounds, style: UITableViewStyle.Plain)
        
        // 指定表格的数据源方法，此时必须要遵守协议
        view.dataSource = self
        
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //之所以用! 是因为定义时对象可以为空，而 addSubView 函数不能接 nil，必须要有值
        self.view.addSubview(tableView!)
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell") as? UITableViewCell
        
        // 如果 cell 不存在，创建一个 cell
        if cell == nil {
            // 实例化一个 cell
            cell = UITableViewCell(style: .Subtitle, reuseIdentifier: "Cell")
        }
        
        // 设置内容
        cell!.textLabel?.text = "Hello \(indexPath.row)"
        
        return cell!
    }

}
