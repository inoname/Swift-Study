// Playground - noun: a place where people can play

import Cocoa

enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}

/// 原始值与枚举值之间的转换
/// 赋值操作需要一个原始值类型时，必须将枚举值转换为原始值
let ace = Rank.Jack
let aceRawValue = ace.rawValue
let convertedRank = Rank(rawValue: 3)





enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
    
}


/**
   结构体
   结构体和类有很多相同的地方，比如方法和构造器。它们之间最大的一个区别就是 结构体是传值，类是传引用。
 */
struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}


let threeOfSpades = Card(rank: .Three, suit: .Spades)
threeOfSpades.simpleDescription()



/**
   相同枚举成员的实例可以有不同的值
 */
enum ServerResponse {
    case Result(String, String)
    case Error(String)
}

let success = ServerResponse.Result("6:00 am", "8:09 pm")
let failure = ServerResponse.Error("Out of cheese.")

switch success {
case let .Result(sunrise, sunset):
    let serverResponse = "Sunrise is at \(sunrise) and sunset is at \(sunset)."
case let .Error(error):
    let serverResponse = "Failure...  \(error)"
}
