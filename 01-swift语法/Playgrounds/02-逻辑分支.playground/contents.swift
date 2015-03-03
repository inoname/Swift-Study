// Playground - noun: a place where people can play

import UIKit

/**
    在 swift 中，没有了 C 语言中的“非零即真”，Bool 是 true / false 
    在做判断的时候，必须准确的指出真假

    swift 对变量的类型要求是异常严格的！
*/

let i = 10

// 必须写出条件
if i > 0 {
    println("hello")
}

/**
    OC 中，可以给 nil 发送任意的消息，不会报错

    隐患：开发测试的时候，程序运行正常，但是上线之后，某些极端的条件满足之后，就会闪退！

    ? 表示返回值可以为空，如果在 swift 中不做后续的处理和判断，程序会崩溃
    ! 表示一定有内容，肯定不是空，可以放心大胆的用

    ? & ! 是 swift 所有版本中变化最频繁的 -> 目标：让程序员尽量的简单！
    提示：不用死记硬背怎么写，Xcode 有智能提示，每一次的提示，多思考一下会有帮助！
*/

var urlString = "http://www.baidu.com/s?word=iPhone高手"
urlString = urlString.stringByAddingPercentEscapesUsingEncoding(NSUTF8StringEncoding)!
let url = NSURL(string: urlString)

// 以下的格式能够保证 if 中的 url 是一定有内容的
if let url1 = NSURL(string: urlString) {
    
    // OC 是在内部做判断
//    if ulr1 == nil {
//        return
//    }
    
    // 可以在 {} 中放心大胆的使用 url1
    url1
}










