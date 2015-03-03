// Playground - noun: a place where people can play

import UIKit

/**
    Swift 中原本很多的 NS 开头的对象，都没有 NS 了，但是原本的 NS 对象仍然能够使用！

    在 swift 中，定义变量的时候，可以直接指定类型

    String & NSString 区别
    1. String 可以支持遍历
       NSString 不支持
    2. String 是一个结构体，性能更高
       NSString 是一个 NSObject 对象，性能相对会差
     
       在日常开发中，绝大多数应该用 String

    3. 有些功能，用 String 目前不方便
        * 取字符串的字串
        * 判断包含
        * 正则表达式

        以上功能还是使用 NSString 会比较方便
*/

let str: String = "我要飞的更高"

for c in str {
    println(c)
}

// 取字符串的字串， String.Index 实在是太费劲
// 可以将 String 类型先转换成 NSString，后续再使用就容易了！
let range = NSMakeRange(0, 3)
let str1 = (str as NSString).substringWithRange(range)

// 在 swift 中，str 在也不需要 withFormat，直接使用 \(变量名)
let i = 10
let view = UIView()
let str2 = str + str1 + "  \(i)   \(view)"

// 特殊格式要求 %02d
// String(format: 类似于 withFormat 
// OC中很多 WithXXX 的方法，到 Swift 中，都变成 (XXX，基本上都能找到
let str3 = String(format: "hello - %04d", arguments: [i])
