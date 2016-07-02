//: Playground - noun: a place where people can play

import UIKit

// create a 10x10 array of Bools
let col = 10
let row = 10
var outcount = 0
var incount = 0
var alivetotal = 0
var before = Array<Array<Bool>>()
for _ in 0..<col{
    before.append(Array(count:row, repeatedValue:false))
}
for outer in before{
    for item in outer{
        if arc4random_uniform(3) == 1{
            before[outcount][incount] = true
            alivetotal += 1
        }
        incount += 1
    }
    incount = 0
    outcount += 1
}
outcount = 0
incount = 0

for item in before{
    print(item)
}
print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX")
for outer in before{
    for item in outer{
        var neighbors = 0
        
        if before[outcount][incount] = true{
            switch neighbors {
            case 0,1:
                
            }
        }
        
        incount += 1
    }
    incount = 0
    outcount += 1
}
