//: Playground - noun: a place where people can play

import Foundation

let immutableString = "hello, playground"
var str = "Hello, playground"


str = "another string"

var myInt = 42
let myConstant = 50/100


// Explicit Typing uses a colon to declare type
let implicitDouble = 70.0
let explicitDouble: Double = 70


let label = "the width is "
let width = 94
let widthLabel = label + String(width)
String(94)
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let orangeSummary = "I have \(oranges) oranges."


// An explicitly typed array of type "Any"
var shoppingList: Array<Any> = ["catfish", "water", "tulips", "blue paint"]
var copyList = shoppingList

shoppingList.append("toothpaste")
shoppingList.append(47)

// Note that copyList is a copy not a reference to shoppingList
shoppingList
copyList


// An explicitly typed dictionary: key,value
var occupation: Dictionary<String,String>= [
    "malcom": "captain",
    "kaylee": "mechanic"
]
occupation["Jayne"] = "Public Relations"

// map function - "the modern for-loop"
var occupationNames = occupation.map { (k:String, v:String) -> String in
    return k
}
occupationNames
// This is the same as above in shorter notation
var occupationNames2 = occupation.map{ return $0.0 }
occupationNames2


// An inclusive range of integers & generators
var r = 50...100
var g = r.generate()
g.next()
g.next()

var g1 = [11,21,31,41,51].generate()
g1.next()
g1.next()

// Tuples - data type: an ordered collection of variables
var tuple1 = (1,2)
tuple1.0
tuple1.1

var tuple2 = (first:"eric", last:"jonassen")
tuple2.0
tuple2.last

// note the print statement prints to console, and behold a for loop
for (k,v) in occupation {
    print("\(k),\(v)")
}

// A Simple Function
func doubler(x:Int) -> Int {
    return x*2
}
doubler(4)

// Passing a function as an argument to another function, note that f:Int->Int is a TYPE, ie functions are typed objects
func progression(v:Int,f:Int->Int) -> Int {
    return f(v)
}
progression(4,f:doubler)

// Booleans
var tf = false
tf = true

// an Array of Boolean Arrays (explicitly typed)
var arrArr: Array<Array<Bool>> = [[true]]

// A closure
var closure = { (x:Int) -> Int in
    return x*2
}

closure(6)
progression(6,f:closure)

// "trailing closure notation" - put the function code inline and passed it as an argument to progression, rather than passing some existing function. This is the same as line 100 above
progression(6) {(x:Int) -> Int in
    return x*2
}



// nil = no value; this is an OPTIONAL variable
var optionalN:Int? = nil
// note that this code will not work: Int? is not the same as Int
// doubler(n)

// watch the first if statement fail, then, once optionalN is assigned a value, succeed
if let n = optionalN {
    let doubleN = doubler(n)
}
optionalN = 14
if let n = optionalN {
    let doubleN = doubler(n)
}

// another optional, but the compiler typechecks it as an Int (unlike the Int?) - may lead to errors at runtime
var implicitOptionalN:Int!
implicitOptionalN = 12
doubler(implicitOptionalN)







