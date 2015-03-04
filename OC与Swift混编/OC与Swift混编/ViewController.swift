//
//  ViewController.swift
//  OC与Swift混编
//
//  Created by kouliang on 15/3/2.
//  Copyright (c) 2015年 kouliang. All rights reserved.
//



/** SWift调用OC
    1.新建swift/OC文件
    此时系统自动生成 <#项目名称#>-Bridging-Header.h 文件
    并且 TARGETS-> Build Settings->Objective-C Bridging Header(搜索bridg) 选项中会自动填入以上头文件的路径
    2.在 <#项目名称#>-Bridging-Header.h 中#import要调用的OC对象头文件
*/

/** OC调用Swift
    1.在OC文件中 #import "<#项目名称#>-Swift.h"
*/

/**
    单元测试中如果使用到了OC代码，同样需要在测试项目的TARGETS-> Build Settings->Objective-C Bridging Header中填入 <#项目名称#>-Bridging-Header.h 文件的路径
*/

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //对象方法
    func sayHello(){
        println("---from swift")
    }
    
    //类方法
    class func sayHello(){
        println("+++from swift")
    }
    func testTDD(){
        Bird.fly()
        Bird().fly()
    }
    
    

    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        Bird.fly()
        Bird().fly()
        
        //OC中如何调用？
        hanshu()
    }
    
}

/// 测试函数
func hanshu(){
    println("hanshu")
}

