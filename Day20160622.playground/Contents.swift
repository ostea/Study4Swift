//: Playground - noun: a place where people can play

import UIKit


//协议protocol
protocol ExampleProtocol{
    var simpleDesc :String {
        get
    }
    mutating func adjust()
}

class SimpleClass :ExampleProtocol{
    func adjust() {
        
    }
    var simpleDesc: String = "i love u baby"
    
}
let minValue = UInt8.min
typealias AudioSample = UInt16

var maxAudio:AudioSample?=nil
maxAudio=12

let http404Error=(404,"Not Found")

let (statusCode,statusessage)=http404Error

print("the status \(statusCode)")

let (_,statumsg)=http404Error
print("\(statumsg)")

//optional
let possibleNumber="sss"
let convertedNumber=Int(possibleNumber)

var serverResponeseCode:Int?=404
serverResponeseCode=nil

if let tem=serverResponeseCode {
    print(tem)
}











