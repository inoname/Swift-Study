// Playground - noun: a place where people can play

import UIKit

/**
    数组 - NSArray 非常像

*/
let array1 = [1, 3, 4, 5, 6]
let array2 = ["zhangsan", "lisi"]

for num in array1 {
    println(num)
}

// 指定数组中只保存某一类的对象，例如：Sting
// 只能保存字符串，同时实例化
var arr1 = [String]()
// 只是定义了一个数组，但是没有实例化
var arr2: [String]

arr1.append("18")
arr1.append("zhangsan")

// 数组的合并 -> 在之前的 swift 中，+ 是和 append 等价的
// 目前的语法中， + 能够直接合并两个"内容一样"的数组
arr2 = ["1", "2", "3"]
arr1 += arr2
// 如果数组中的类型不一致，是不允许合并的！
// 再次提醒，在 swift 中，类型要求异常的严格
//arr1 += array1







/**
字典 同样使用 [] 定义，只是格式 是 key: value, key2: value2
*/
let dict1 = ["name": "zhangsan", "age": 18]


// 遍历字典的循环中 (key, value) 具体的变量名可以随便写
for (k, v) in dict1 {
    println("\(k) --- \(v)")
}


// 定义字典的时候，同样可以指定 key & value 的类型
// 通常字典中，key 是字符串，value 是任意的类型
// AnyObject 类似于 OC 中的 id
// 但是，在 swift 中，真的是万物皆对象，数值型的不需要任何的转换
var dict = Dictionary<String, AnyObject>()
// OC 中 setValue
dict["name"] = "zhangsan"
dict
dict["age"] = 18
dict

// 如果设置同样的 key 会出现什么结果 -> 会替换之前存在的内容
dict["name"] = "lisi"
dict

// 字典的合并
var dict2 = Dictionary<String, AnyObject>()
dict2["title"] = "BOSS"
dict2
dict2["name"] = "wangwu"

// 要合并字典
for (k, v) in dict2 {
    // updateValue 可以直接更新字典中存在的值，如果不存在会新建
    dict.updateValue(v, forKey: k)
}
dict