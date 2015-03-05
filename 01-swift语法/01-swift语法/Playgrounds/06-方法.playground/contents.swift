// Playground - noun: a place where people can play

import Cocoa


/**
   类方法&对象方法
*/

/**
   局部参数&外部参数
   默认第一个参数是局部参数，以后的参数是外部参数
   参数前加#，转换为外部参数
   参数前加_ ,转换为局部参数
*/
class Calculator {
    
    static func sum(num1: Int, _ num2: Int) -> Int {
        return num1 + num2
    }
    class func sum1(num1: Int, _ num2: Int) -> Int {
        return num1 + num2
    }
    func sum(#num1: Int, num2: Int) -> Int {
        return num1 + num2
    }
    
    
}
// 类方法
Calculator.sum1(10, 20)


// 对象方法
var c = Calculator()
c.sum(num1: 10, num2: 20)
