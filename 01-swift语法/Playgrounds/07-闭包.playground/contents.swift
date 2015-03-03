// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/**
    在 Swift 中，相比较 OC 中的方法，函数有着相当大的变化

    1. 函数可以当作参数传递
    2. 函数也可以当作返回值
*/

func demo() {
    println("hello")
}

// 变量 a 就是一个函数
let a = demo
a()

// 变量 b 的类型定义 参数列表 -> 返回值
let b: ()->() = demo
b()

/**
    在 OC 中 block 最常用的场景就是回调
*/

func doSomething(completion: ()->()) {
    // 耗时操作
    println("玩命工作中...")
    
    completion()
}

// 直接将 demo 函数当作参数传递
//doSomething(demo)

// 闭包的写法
doSomething {
    let i = 10
}

