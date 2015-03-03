// Playground - noun: a place where people can play

import UIKit

/**
    柯里化是 swift 中函数的一种应用
    能够方便地量产相似方法
    柯里化一个方法模板，能够避免写很多重复的代码

    柯里化属于高级语法，建议在学习过程中逐渐体会，不要求立即掌握
    在日常开发中不使用柯里化不会有什么影响
*/
///  习惯写法
func sum1(a: Int, b: Int) -> Int {
    return a + b
}

let r1 = sum1(10, 20)

///  柯里化写法
///
///  将能够接受多个参数的函数 转换成 接受第一个参数的函数
///  并且返回余下的参数及返回结果的新函数
func sum2(a: Int)(b: Int) -> Int {
    return a + b
}

///  addOther 是一个函数，接受一个参数，并且返回之前函数的数值
let addOther = sum2(10)
let r2 = addOther(b: 20)
