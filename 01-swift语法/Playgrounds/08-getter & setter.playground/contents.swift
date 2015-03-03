// Playground - noun: a place where people can play

import UIKit

/**
    以下是按照 OC 中的思路 getter & setter 方法的实现

    不过正如 OC 中的应用场景，通常不需要去刻意的实现 getter & setter 方法
*/
class Person {
    var _name: String?
    var name: String {
        get {
            return _name!
        }
        set {
            _name = newValue
        }
    }
}

let p = Person()
p.name = "zhangsan"
println(p.name)

/**
    在 OC 中，我们通常希望在给某一个变量赋值之后，去做一些额外的操作

    最经典的应用就是在自定义 Cell 的时候，通过模型的设置方法完成 Cell 的填充
*/

class Cell {
    var model: NSString? {
        didSet {
            label.text = model as? String
            label.sizeToFit()
        }
    }
    
    lazy var label: UILabel = {
        let l = UILabel()
        l.backgroundColor = UIColor.yellowColor()
        
        return l
    }()
}

let cell = Cell()
let view = UIView(frame: CGRectMake(0, 0, 200, 200))
view.backgroundColor = UIColor.orangeColor()
view.addSubview(cell.label)
cell.model = "Hello"
view





