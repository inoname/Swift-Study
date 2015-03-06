// Playground - noun: a place where people can play

import UIKit


let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

/**
    闭包表达式语法有如下一般形式：
    { (parameters) -> returnType in
    statements
    }

    定义闭包类型， 注意类型别名的首字母要大写
    typealias Completion = (str1:String)->()

    在闭包内部，访问属性、函数需要使用 self.

*/
var reversed = sorted(names, { (s1: String, s2: String) -> Bool in
return s1 > s2
})


/// 根据上下文推断类型
reversed = sorted(names, { s1, s2 in return s1 > s2 } )

/// 单表达式闭包隐式返回
reversed = sorted(names, { s1, s2 in s1 > s2 } )

/// 参数名称缩写，直接通过$0,$1,$2来顺序调用闭包的参数。
reversed = sorted(names, { $0 > $1 } )

/// 运算符函数
reversed = sorted(names, > )



/**
    尾随闭包是一个书写在函数括号之后的闭包表达式，函数支持将其作为最后一个参数调用。
    如果函数只需要闭包表达式一个参数，当使用尾随闭包时可以把()省略掉。
 */
reversed = sorted(names) { $0 > $1 }




