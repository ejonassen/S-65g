//: Playground - noun: a place where people can play

import UIKit
import Foundation

// create a 10x10 array of Bools
let col = 10
let row = 10
var r = 0
var c = 0
var beforeAlive = 0
var afterAlive = 0
var before = Array<Array<Bool>>()
for _ in 0..<row{
    before.append(Array(count:col, repeatedValue:false))
}
//create a copy of the array
var after = before

// Set initial values
for outer in before{
    for item in outer{
        if arc4random_uniform(3) == 1{
            before[r][c] = true
            beforeAlive += 1
        }
        c += 1
    }
    c = 0
    r += 1
}
r = 0
c = 0

for item in before{
    print(item)
}
print("")

for first in before{
    for item in first{
        var neighbors = 0
        
        // check for neighbors
        if r > 0 && r < 9 && c > 0 && c < 9{
            if before[r-1][c-1] == true {neighbors += 1}
            if before[r][c-1] == true {neighbors += 1}
            if before[r+1][c-1] == true {neighbors += 1}
            if before[r-1][c] == true {neighbors += 1}
            if before[r+1][c] == true {neighbors += 1}
            if before[r-1][c+1] == true {neighbors += 1}
            if before[r][c+1] == true {neighbors += 1}
            if before[r+1][c+1] == true {neighbors += 1}
        } else if r == 0 && c != 0 && c != 9{
            if before[r+9][c-1] == true {neighbors += 1}
            if before[r][c-1] == true {neighbors += 1}
            if before[r+1][c-1] == true {neighbors += 1}
            if before[r+9][c] == true {neighbors += 1}
            if before[r+1][c] == true {neighbors += 1}
            if before[r+9][c+1] == true {neighbors += 1}
            if before[r][c+1] == true {neighbors += 1}
            if before[r+1][c+1] == true {neighbors += 1}
        } else if r == 9 && c != 0 && c != 9{
            if before[r-1][c-1] == true {neighbors += 1}
            if before[r][c-1] == true {neighbors += 1}
            if before[r-9][c-1] == true {neighbors += 1}
            if before[r-1][c] == true {neighbors += 1}
            if before[r-9][c] == true {neighbors += 1}
            if before[r-1][c+1] == true {neighbors += 1}
            if before[r][c+1] == true {neighbors += 1}
            if before[r-9][c+1] == true {neighbors += 1}
        } else if c == 0 && r != 0 && r != 9{
            if before[r-1][c+9] == true {neighbors += 1}
            if before[r][c+9] == true {neighbors += 1}
            if before[r+1][c+9] == true {neighbors += 1}
            if before[r-1][c] == true {neighbors += 1}
            if before[r+1][c] == true {neighbors += 1}
            if before[r-1][c+1] == true {neighbors += 1}
            if before[r][c+1] == true {neighbors += 1}
            if before[r+1][c+1] == true {neighbors += 1}
        } else if c == 9 && r != 0 && r != 9{
            if before[r-1][c-1] == true {neighbors += 1}
            if before[r][c-1] == true {neighbors += 1}
            if before[r+1][c-1] == true {neighbors += 1}
            if before[r-1][c] == true {neighbors += 1}
            if before[r+1][c] == true {neighbors += 1}
            if before[r-1][c-9] == true {neighbors += 1}
            if before[r][c-9] == true {neighbors += 1}
            if before[r+1][c-9] == true {neighbors += 1}
        } else if c == 0 && r == 0{
            if before[r+9][c+9] == true {neighbors += 1}
            if before[r][c+9] == true {neighbors += 1}
            if before[r+1][c+9] == true {neighbors += 1}
            if before[r+9][c] == true {neighbors += 1}
            if before[r+1][c] == true {neighbors += 1}
            if before[r+9][c+1] == true {neighbors += 1}
            if before[r][c+1] == true {neighbors += 1}
            if before[r+1][c+1] == true {neighbors += 1}
        } else if c == 9 && r == 9{
            if before[r-1][c-1] == true {neighbors += 1}
            if before[r][c-1] == true {neighbors += 1}
            if before[r-9][c-1] == true {neighbors += 1}
            if before[r-1][c] == true {neighbors += 1}
            if before[r-9][c] == true {neighbors += 1}
            if before[r-1][c-9] == true {neighbors += 1}
            if before[r][c-9] == true {neighbors += 1}
            if before[r-9][c-9] == true {neighbors += 1}
        }
        
        // set values in after
        if before[r][c] == true{
            switch neighbors {
            case 0,1:
                after[r][c] = false
            case 2,3:
                after[r][c] = true
                afterAlive += 1
            default:
                after[r][c] = false
            }
        } else {
            switch neighbors {
            case 3:
                after[r][c] = true
                afterAlive += 1
            default:
                after[r][c] = false
            }
        }
        c += 1
    }
    c = 0
    r += 1
}

for item in after{
    print(item)
}

print(beforeAlive)
print(afterAlive)
