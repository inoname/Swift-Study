// Playground - noun: a place where people can play

import UIKit



/**
   对字典来说，不可变性也意味着我们不能替换其中任何现有键所对应的值。不可变字典的内容在被首次设定之后不能更改。 

   我们不能改变任何不可变数组的大小，但是我们可以重新设定相对现存索引所对应的值。

 */


//数组定义
var strArray = [String]()  //只能保存字符串，同时实例化
var numArray: [Int]        //只是定义了一个数组，但是没有实例化

let strArray1 = ["zhangsan", "lisi"]
let numArray1 = [7, 2, 5, 9, 6]

//数组遍历
for num in numArray1 {
    println(num)
}

//数组合并，类型不一致不允许合并
strArray.append("wangwu")
strArray += strArray1


//sorted函数，会根据您提供的基于输出类型排序的闭包函数将已知类型数组中的值进行排序。 一旦排序完成，函数会返回一个与原数组大小相同的新数组，该数组中包含已经正确排序的同类型元素。
sorted(numArray1,>)

//join函数，将字符串数组合并成一个字符串，并且在中间插入指定字符串
join("&", strArray1)







/**
    字典 同样使用 [] 定义，只是格式 是 key: value, key2: value2
*/
let dict1 = ["name": "zhangsan", "age": 18]

//定义字典的同时指定 key & value 的类型
var dict2 = Dictionary<String, AnyObject>()
dict2["name"] = "zhangsan"
//设置同样的 key 会替换之前存在的内容
dict2["name"] = "lisi"


//字典遍历(key, value) 具体的变量名可以随便写
for (k, v) in dict1 {
    println("\(k) --- \(v)")
}


// 字典的合并
for (k, v) in dict1 {
    // updateValue 可以直接更新字典中存在的值，如果不存在会新建
    dict2.updateValue(v, forKey: k)
}
// 给字典添加一个合并的扩展方法
extension Dictionary {
    
    ///  将给定的字典（可变的）合并到当前字典
    ///  mutating 表示函数操作的字典是可变类型的
    ///  泛型(随便一个类型)，封装一些函数或者方法，更加具有弹性
    ///  任何两个 [key: value] 类型匹配的字典，都可以进行合并操作
    mutating func merge<K, V>(dict: [K: V]) {
        for (k, v) in dict {
            // 字典的分类方法中，如果要使用 updateValue，需要明确的指定类型
            self.updateValue(v as! Value, forKey: k as! Key)
        }
    }
}
