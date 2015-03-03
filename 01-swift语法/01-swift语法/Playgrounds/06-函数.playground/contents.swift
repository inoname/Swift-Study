// Playground - noun: a place where people can play

import UIKit

/**
   函数定义
 */
func demo() {
    println("hello")
}
let b: ()->() = demo


/**
   函数中的参数默认都是局部参数
 */
func sum(x: Int, y: Int) -> Int {
    return x + y
}
var i=sum(3, 4)



/**
   inout 关键字允许在函数内部修改变量的数值
*/
func swap(inout a: Int, inout b: Int) {
    let tmp = a
    a = b
    b = tmp
}

var x = 10
var y = 20
swap(&x, &y)
x
y



/**
   泛型 -> 随便什么类型

   泛型的定义首字母必须大写，通常用 T，但是也可以是其他类型
*/
func swapValues<T>(inout a: T, inout b: T) {
    let tmp = a
    a = b
    b = tmp
}
var d1 = 10.3
var d2 = 10.5
swapValues(&d1, &d2)
d1
d2

/**
在使用泛型时，必须保证参数的类型一致

以下代码是不正确的
*/
//swapValues(&d1, &x)

/**
泛型的函数要保证内部使用的运算符是任意类型都支持的

以下代码涉及到运算符重载，以下代码定义的泛型是不正确的

关于泛型的使用，可以不用着急，泛型主要用在封装底层框架上，让代码的弹性空间更大！
可以随着对 Swift 的掌握深入不断体会！
*/
//func sum1<T>(x: T, y: T) -> T {
//    return x + y
//}






/**
   多个返回值
 */
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}
let statistics = calculateStatistics([5, 3, 100, 3, 9])
statistics.max
statistics.min
statistics.sum



/**
   参数数量可变
 */
func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
sumOf()
sumOf(4,7)
sumOf(42, 597, 12)



/**
   函数做返回值
 */
func makeIncrementer() -> (Int -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(6)




/**
   函数做参数
*/
func hasAnyMatches(list: [Int], condition: Int -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(numbers, lessThanTen)



