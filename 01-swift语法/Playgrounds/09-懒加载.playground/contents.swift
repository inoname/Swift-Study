// Playground - noun: a place where people can play

import UIKit

class Person {
    var name: String = "zhangsan"
}

///  对象 p 在实例化的时候，name 已经被赋值
let p = Person()
println(p.name)

///  使用 lazy 描述符号可以实现属性的懒加载
///  对象 p1 在实例化的时候，name 并不会被赋值
class Person1 {
    lazy var name: String = "zhangsan"
}

let p1 = Person1()
println(p1.name)

///  如果在懒加载中要使用到复杂的计算，可以使用以下代码
class manager {
    lazy var operation: NSOperationQueue = {
        return NSOperationQueue()
    }()
}

let m = manager()
println(m.operation)

///  注意：懒加载由于先要将属性变量声明出来，因此不能使用 let!
