// Playground - noun: a place where people can play

import UIKit

/**
    Swift 的String类型与 Foundation NSString类进行了无缝桥接。
 
    String类型是值类型(不再是对象类型)，字符串在进行常量、变量赋值操作或在函数/方法中传递时，会进行值拷贝。 任何情况下，都会对已有字符串值创建新副本，并对该新副本进行传递或赋值操作。


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



// 如果是可选的String类型，打印出来是会在前面加一个Optional
var optionalStr:String?="hello"
println(optionalStr)
println(optionalStr!)


/// String和NSString在计算长度时的区别
let str: String = "我要飞的更高"
let length1 = str.lengthOfBytesUsingEncoding(NSUTF8StringEncoding)
let length2 = (str as NSString).length


// 遍历字符
for c in str {
    println(c)
}

// 判断是否为空，isEmpty等价于 "" && nil
if str.isEmpty{}

// 取字符串的字串，可以将 String 类型先转换成 NSString，后续再使用就容易了！
let range = NSMakeRange(0, 3)
let str1 = (str as NSString).substringWithRange(range)


// 字符串插值
let i = 10
let view = UIView()
let str2 = str + str1 + "  \(i)   \(view)"


// 特殊格式要求 %02d
// OC中很多 WithXXX 的方法，到 Swift 中，都变成 (XXX，基本上都能找到
let str3 = String(format: "hello - %04d", arguments: [i])







/// 十六进制字符串转Unicode
let sparklingHeart = "\u{1F496}"
let ss = "\u{1f603}"

let code = "0x1f603"
let scanner = NSScanner(string: code)
// 提示：如果要传递指针，不能使用 let，var 才能修改数值
var value: UInt32 = 0
scanner.scanHexInt(&value)
value
let emoji = Character(UnicodeScalar(value))

