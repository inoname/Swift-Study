//
//  _1_swift__Tests.swift
//  01-swift语法Tests
//
//  Created by kouliang on 15/2/27.
//  Copyright (c) 2015年 kouliang. All rights reserved.
//


/**
    所有要测试的函数都是以 test 开头的
    setUp()
    test1()
    test2()
    tearDown()
    在跑测试的时候，可以一次跑所有，也可以一次只跑一个

    在实际开发中
    先写测试－运行是红色的－红灯
    再写代码－运行是绿色的－绿灯
    重构－红灯，绿灯

    单元测试有被叫做红灯绿灯开发！
*/

/**
    断言： XCTAssert
    提前预判符合某一种条件！

    - 在单元测试中，如果不符合断言条件，就会报错！
    - 在正规的代码中，同样可以使用断言  assert(url != nil,"url为空")
    - 在测试的时候，如果不符合条件，运行时会直接崩溃！
    - 在发布的时候，如果不符合条件，但是代码本身能够执行，会继续执行，断言不会对程序的运行造成任何的影响！
    - 发布模式，assert 会被忽略
*/

/**
    异步方法的单元测试使用expectation
*/

import UIKit
import XCTest

class _1_swift__Tests: XCTestCase {
    
    // 在运行测试之前运行一次，可以做全局的初始化
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    // 在运行结束之前运行一次，可以做销毁动作
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
}
