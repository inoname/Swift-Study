//
//  自定义对象归档
//  01-swift语法
//
//  Created by kouliang on 15/3/3.
//  Copyright (c) 2015年 kouliang. All rights reserved.
//

/**
    归档 NSCoding，实现两个方法
    
    extension 是一个分类，分类不允许有存储能力，所以协议方法不能写在分类中

    协议中的init(coder decoder: NSCoder)函数会覆盖原始的构造函数，所以类中至少还要有另一个init方法

    如果不指定键名，会使用属性名称作为 key，基本数据类型，需要指定 key
*/


import UIKit

class EncodeClass: NSObject,NSCoding {
   
    var access_token: String?
    var expiresDate: NSDate?
    
    // 整数类型如果要归档&解档，需要使用 Int 类型，NSNumber 会不正常！
    var uid : Int = 0
    
    // 构造函数，一旦写了，init 会被忽略
    init(dict: NSDictionary) {
        super.init()
        
        self.setValuesForKeysWithDictionary(dict as [NSObject : AnyObject])
    }
    
    // 至少要有一个 init 方法，否则外部没有办法直接实例化对象
    //    override init() {}
    
    
    
// MARK: - 归档&接档，如果不指定键名，会使用 属性名称作为 key
    // 如果写了归档和接档方法，至少需要有一个构造函数
    ///  归档方法
    func encodeWithCoder(encoder: NSCoder) {
        encoder.encodeObject(access_token)
        encoder.encodeObject(expiresDate)
        // 如果是基本数据类型，需要指定 key
        encoder.encodeInteger(uid, forKey: "uid")
    }
    
    ///  解档方法，NSCoding 需要的方法 － required 的构造函数不能写在 extension 中
    ///  覆盖构造函数
    required init(coder decoder: NSCoder) {
        access_token = decoder.decodeObject() as? String
        expiresDate = decoder.decodeObject() as? NSDate
        uid = decoder.decodeIntegerForKey("uid")
    }
    
    
// MARK: - 快捷方法
    ///  将数据保存到沙盒
    func saveAccessToken() {
        NSKeyedArchiver.archiveRootObject(self, toFile: EncodeClass.tokenPath())
    }
    
    //  从沙盒读取数据
    class func loadAccessToken() -> EncodeClass? {
        return NSKeyedUnarchiver.unarchiveObjectWithFile(tokenPath()) as? EncodeClass
    }
    
    ///  返回保存在沙盒的路径
    class func tokenPath() -> String {
        var path = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true).last as! String
        path = path.stringByAppendingPathComponent("WBToken.plist")
        return path
    }
}