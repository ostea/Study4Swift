//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print("go\(str)")

var occ=[String]()
var ocDir=[String:Float]()


var optionName:String?=nil
var greeting="Hello!"
if let name=optionName{
    greeting="Hello!\(name)"
}

let nickName:String?="Http.getUser.getName";
let normalName:String="Guest"
print("Hi! \(nickName ?? normalName)" )

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

var largest=0
for (kind,numbers) in interestingNumbers{
    for number in numbers
    {
        if number>largest{
            largest=number
        }
    }

}
print(largest)

var n=2
while n < 100 {
    n=n*2
}
print(n)

var m=2
repeat{
    m=m*2
}while m < 100
print(m)


func greet(name:String,day:String) -> String {
    return "Hello \(name),today is \(day)"
}
func greet(name:String,day:String,desc:String) -> String {
    return "Hello,\(name) ,today u have \(desc) for lunch";
}
greet("thorn", day: "Thestday", desc: "are u ok?")


greet("osccc",day: "Tuesday")
greet("thorn", day: "Monday")

//参数的类型
    //1函数做为参数
func makeIncrementer()->(Int -> Int){
    func addOne(number : Int) ->Int{
        return 1+number;
    }
    return addOne
}
var mm=makeIncrementer()

mm(7)
    //2函数当作参数
func hasAnyMatches(list:[Int],condition:Int -> Bool)->Bool{
    for  item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func less(number:Int)->Bool{
    return number < 10
}
var number=[20,12,16,63]
hasAnyMatches(number, condition: less)

//闭包
number.map({
    (num:Int) -> Int in
    let resl = 3 * num
    return resl
    
})



let sortedNumber = number.sort{$0 > $1}
sortedNumber

class People{
    var numberOfSides : Int = 0
    var name:String? = nil
    
    init(name:String){
        self.name=name;
    }
    func simpleDesc()->String{
        
     return "Hello, \(self.name ?? "Guest") "
    }
    var perimerter :Int{
        get{
            return 3 * numberOfSides
        }
        set{
            numberOfSides = newValue / 3
        }
    }
}
var p = People(name: "oscc")

p.name
p.simpleDesc()


p.numberOfSides
p.perimerter=15
p.numberOfSides=3
p.perimerter

/////枚举

enum Rank :Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight,Nine, Ten
    case Jack,Queen,King
    
    func simpleDesc() -> String {
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
let ace=Rank.Ace
let acRaw=ace.rawValue
let accc=Rank.Jack
accc.simpleDesc()

struct Card {
    var rank:Rank
    var name:String
    
}

let c1=Card(rank: .Five  , name: "1'")
c1.rank.rawValue

let c2=Card(rank: .Four, name: "thorn")
c2.name

enum ServerResponse {
    case Result(String,String)
    case Error(String)
    
}

let success=ServerResponse.Result("6:00am", "8:09pm")

let failure=ServerResponse.Error("out of cheese")

switch success{
    case let .Result(sunrise, sunset):
        let serverResponse = "Sunrise is at \(sunrise) and sunset is at \(sunset)."
    case let .Error(error):
        let serverResponse = "Failure...  \(error)"
}


//////protocol

protocol ExampleProtocol {
    var simpleDesc: String{get }
    mutating func adjust()
    
}

class  SimpleClass : ExampleProtocol {
    var simpleDesc: String="A very simple class"
    func adjust() {
        simpleDesc += "now 100% adjuested"
    }
}

var sc=SimpleClass()
sc.simpleDesc
sc.adjust()
sc.simpleDesc

extension Int:ExampleProtocol{
    var simpleDesc:String{
        return  "the number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
}

protocol SmProtocol {
    mutating func abxxsValue()
}
extension Double : SmProtocol{
    mutating func abxxsValue() {
        if self < 0 {
            self = 0 - self
        }
    }
}

var dd :Double = -55
dd.abxxsValue()


