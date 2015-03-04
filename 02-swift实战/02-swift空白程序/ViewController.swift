//
//  ViewController.swift
//  02-swift空白程序
//
//  Created by kouliang on 15/2/27.
//  Copyright (c) 2015年 kouliang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 打印方法名称
        println(__FUNCTION__)
        
        self.view.backgroundColor=UIColor.lightGrayColor()
        
        // swift中原有OC的枚举，全部被拆分成两部分(.之前的部分可以省略，但是没有智能提示)
        // OC中很多类方法返回类型 instancetype->id，这种方法在 swift 中绝大多数返回的都是 AnyObject。在真正要使用一个AnyObject之前，需要程序员自己主动用 as 指定具体的类型，至于 ? 还是 !，如果不熟悉，跟着 Xcode 走！
        let btn=UIButton.buttonWithType(.ContactAdd) as! UIButton
        btn.center=self.view.center
        self.view.addSubview(btn)
        
        
        // 给按钮添加一个监听方法，相对于 OC省略了 @selector 关键字，需要指定一个参数，同样使用一个:
        btn.addTarget(self, action: "clickedMe:", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func clickedMe(btn:UIButton){
        println("点我了")
        println(btn)
    }
}

