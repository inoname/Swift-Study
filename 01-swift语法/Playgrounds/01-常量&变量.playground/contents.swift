// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/**
    var 定义变量
    let 定义常量

    关于常量&变量的使用原则：尽量先用 let，只有需要变的时候，再用 var，能够更加安全
*/

var x = 10
x = 15

let z = 20
// 常量在定义之后不允许过修改
//z = 21

// alloc/init －> swift 中有一个构造函数的概念，类名()
// 注意：let 定义的常量，如果是对象，指的是保存的指针地址不允许修改
// 可以修改内部的属性
// 在 swift 中，变量的类型大多是能够自动推断的，推断的原则取决于右侧的代码
let view = UIView(frame: CGRectMake(0, 0, 200, 200))
view.backgroundColor = UIColor.redColor()

let label = UILabel()
label.text = "hello"
label.sizeToFit()

view.addSubview(label)

/**
    一定记住：在 swift 中，任何数据类型都没有隐含形式的转换
    当两个变量之间要进行计算的时候，必须明确指定类型，或者做转换

    在 Swift 中，默认的小数类型是 Double，因为 OC 中的类型太灵活，用 float 能够快点一点
    整数的默认类型是 Int
*/
let i = 10
let j = 10.5

let k1 = Double(i) + j
let k2 = i + Int(j)



