/**
    使用 lazy 描述符号可以实现属性的懒加载

    注意：懒加载由于先要将属性变量声明出来，因此不能使用 let!
         使用了lazy之后需要有配对的设置数值的方法
 */

import UIKit

class Person {
    var name: String = "zhangsan"
    
    // 懒加载title
    lazy var title:String = "boss"
    
    // 如果要做复杂的操作，可以使用以下形式
    lazy var tableView:UITableView? = {
        let view = UITableView()
        // do something
        return view
        }()
}

// 对象p在实例化的时候，name 已经被赋值，title并没有被赋值
let p = Person()


