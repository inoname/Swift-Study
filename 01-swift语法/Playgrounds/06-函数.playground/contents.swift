// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// 定义函数
/**
    -> 表示返回值

    函数的格式
    func 函数名(参数列表) -> 返回值 { // 代码 }
    如果返回值没有，可以写成 ()/Void/什么都不写

    -> 表示左边的计算结果，输出给右边
*/
func sum(x: Int, y: Int) -> Int {
    return x + y
}

let i = sum(10, 20)

// 闭包，类似于 oc 中的 block
// 在 oc 中，函数本身就可以当作参数传递，函数还可以当作返回值
// 函数本身是一个特殊的闭包 － 暂时可以不用理解

