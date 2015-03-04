//
//  TableVC1.swift
//  02-swift空白程序
//
//  Created by kouliang on 15/2/27.
//  Copyright (c) 2015年 kouliang. All rights reserved.
//


// Xcode使用技巧
// 1.cmd + shift + o  查找文件
// 2.ctrl + 6  头文件中搜索方法的快捷键

import UIKit

class TableVC1: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 注册可重用单元格，OC中使用[xxx class] => xxx.self
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }
    
    // MARK: - 数据源方法
    // override表示重写父类方法
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as! UITableViewCell
    
        cell.textLabel!.text = "hello + \(indexPath.row)"
        
        return cell
    }
}
