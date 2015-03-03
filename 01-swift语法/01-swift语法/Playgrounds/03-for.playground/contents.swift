// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// OC 中的写法仍然可以使用，不过有两个细节
// 1. 没有括号
// 2. 没有语法提示
for var i = 0; i < 10; i++ {
    println(i)
}

// swift 中的标准写法，Xcode 6.0 beta 3之前
for i in 0..<10 {
    println(i)
}

// 从 0 到 10，一共 11 次
for i in 0...10 {
    println(i)
}

// 如果循环的时候，对索引数字不需要，可以使用 "_" 忽略
for _ in 0...10 {
    println("haha")
}





