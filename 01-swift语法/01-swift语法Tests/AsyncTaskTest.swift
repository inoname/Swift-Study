//
//  AsyncTaskTest.swift
//  01-swift语法
//
//  Created by kouliang on 15/3/6.
//  Copyright (c) 2015年 kouliang. All rights reserved.
//


/**
异步方法的单元测试使用expectation
*/


import UIKit
import XCTest

class AsyncTaskTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    
    ///  网络访问是异步的，在 Xcode 6.0 之前，异步的单元测试相当的蛋疼
    ///  在 Xcode 4.0 的时候，苹果都不好意思把单元测试暴露出来！
    func testAsyncTask() {
        // 1. 定义一个"期望" -> 描述异步的需求，只是一个标记而已
        let expectation = expectationWithDescription("kkkkk")
        
        let task = AsyncTask()
        task.doSomthing2 { (str) -> () in
            println(str)
            
            // 2. 标记"期望达成"
            expectation.fulfill()
        }
        
        // 3. 等待期望达成
        // 参数时间：等待异步操作必须在10s钟之内完成
        waitForExpectationsWithTimeout(3.0, handler: { (error) -> Void in
            XCTAssertNil(error)
        })
    }
}
