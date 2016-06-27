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

// An explicitly typed array
var shoppingList: Array<Any> = ["catfish", "water", "tulips", "blue paint"]
shoppingList.append("toothpaste")
shoppingList.append(47)

//An explicitly typed dictionary
var occupation: Dictionary<String,String>= [
    "malcom": "captain",
    "kaylee": "mechanic"
]

occupation["Jayne"] = "Public Relations"

occupation