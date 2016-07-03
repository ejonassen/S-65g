//
//  Engine.swift
//  Assignment2
//
//  Created by Eric Jonassen on 7/2/16.
//  Copyright © 2016 Eric Jonassen. All rights reserved.
//

import Foundation

// Step function (for p3)
func step(inputArray: Array<Array<Bool>>) -> Array<Array<Bool>> {
    
    var before = inputArray
    var after = before
    
    var r = 0
    var c = 0
    
    
    for first in before{
        for _ in first{
            var neighborCount = 0
            
            // check for neighborCount
            if r > 0 && r < 9 && c > 0 && c < 9{
                if before[r-1][c-1] == true {neighborCount += 1}
                if before[r][c-1] == true {neighborCount += 1}
                if before[r+1][c-1] == true {neighborCount += 1}
                if before[r-1][c] == true {neighborCount += 1}
                if before[r+1][c] == true {neighborCount += 1}
                if before[r-1][c+1] == true {neighborCount += 1}
                if before[r][c+1] == true {neighborCount += 1}
                if before[r+1][c+1] == true {neighborCount += 1}
            } else if r == 0 && c != 0 && c != 9{
                if before[r+9][c-1] == true {neighborCount += 1}
                if before[r][c-1] == true {neighborCount += 1}
                if before[r+1][c-1] == true {neighborCount += 1}
                if before[r+9][c] == true {neighborCount += 1}
                if before[r+1][c] == true {neighborCount += 1}
                if before[r+9][c+1] == true {neighborCount += 1}
                if before[r][c+1] == true {neighborCount += 1}
                if before[r+1][c+1] == true {neighborCount += 1}
            } else if r == 9 && c != 0 && c != 9{
                if before[r-1][c-1] == true {neighborCount += 1}
                if before[r][c-1] == true {neighborCount += 1}
                if before[r-9][c-1] == true {neighborCount += 1}
                if before[r-1][c] == true {neighborCount += 1}
                if before[r-9][c] == true {neighborCount += 1}
                if before[r-1][c+1] == true {neighborCount += 1}
                if before[r][c+1] == true {neighborCount += 1}
                if before[r-9][c+1] == true {neighborCount += 1}
            } else if c == 0 && r != 0 && r != 9{
                if before[r-1][c+9] == true {neighborCount += 1}
                if before[r][c+9] == true {neighborCount += 1}
                if before[r+1][c+9] == true {neighborCount += 1}
                if before[r-1][c] == true {neighborCount += 1}
                if before[r+1][c] == true {neighborCount += 1}
                if before[r-1][c+1] == true {neighborCount += 1}
                if before[r][c+1] == true {neighborCount += 1}
                if before[r+1][c+1] == true {neighborCount += 1}
            } else if c == 9 && r != 0 && r != 9{
                if before[r-1][c-1] == true {neighborCount += 1}
                if before[r][c-1] == true {neighborCount += 1}
                if before[r+1][c-1] == true {neighborCount += 1}
                if before[r-1][c] == true {neighborCount += 1}
                if before[r+1][c] == true {neighborCount += 1}
                if before[r-1][c-9] == true {neighborCount += 1}
                if before[r][c-9] == true {neighborCount += 1}
                if before[r+1][c-9] == true {neighborCount += 1}
            } else if c == 0 && r == 0{
                if before[r+9][c+9] == true {neighborCount += 1}
                if before[r][c+9] == true {neighborCount += 1}
                if before[r+1][c+9] == true {neighborCount += 1}
                if before[r+9][c] == true {neighborCount += 1}
                if before[r+1][c] == true {neighborCount += 1}
                if before[r+9][c+1] == true {neighborCount += 1}
                if before[r][c+1] == true {neighborCount += 1}
                if before[r+1][c+1] == true {neighborCount += 1}
            } else if c == 9 && r == 9{
                if before[r-1][c-1] == true {neighborCount += 1}
                if before[r][c-1] == true {neighborCount += 1}
                if before[r-9][c-1] == true {neighborCount += 1}
                if before[r-1][c] == true {neighborCount += 1}
                if before[r-9][c] == true {neighborCount += 1}
                if before[r-1][c-9] == true {neighborCount += 1}
                if before[r][c-9] == true {neighborCount += 1}
                if before[r-9][c-9] == true {neighborCount += 1}
            }
            
            // set values in after
            if before[r][c] == true{
                switch neighborCount {
                case 0,1:
                    after[r][c] = false
                case 2,3:
                    after[r][c] = true
                default:
                    after[r][c] = false
                }
            } else {
                switch neighborCount {
                case 3:
                    after[r][c] = true
                default:
                    after[r][c] = false
                }
            }
            c += 1
        }
        c = 0
        r += 1
    }

    
    return after;
}

// Step2 Function (for p4)
func step2(inputArray: Array<Array<Bool>>) -> Array<Array<Bool>> {
    
    var before = inputArray
    var after = before
    
    var r = 0
    var c = 0
    
    
    for first in before{
        for _ in first{
            
            let neighborCount = neighbors(before, r: r, c: c)
            
            // set values in after
            if before[r][c] == true{
                switch neighborCount {
                case 0,1:
                    after[r][c] = false
                case 2,3:
                    after[r][c] = true
                default:
                    after[r][c] = false
                }
            } else {
                switch neighborCount {
                case 3:
                    after[r][c] = true
                default:
                    after[r][c] = false
                }
            }
            c += 1
        }
        c = 0
        r += 1
    }
    
    
    return after;
}

func neighbors(inputArray: Array<Array<Bool>>, r:Int, c:Int) -> Int{
    
    var before = inputArray
    
    var neighborCount = 0
    
    // check for neighborCount
    if r > 0 && r < 9 && c > 0 && c < 9{
        if before[r-1][c-1] == true {neighborCount += 1}
        if before[r][c-1] == true {neighborCount += 1}
        if before[r+1][c-1] == true {neighborCount += 1}
        if before[r-1][c] == true {neighborCount += 1}
        if before[r+1][c] == true {neighborCount += 1}
        if before[r-1][c+1] == true {neighborCount += 1}
        if before[r][c+1] == true {neighborCount += 1}
        if before[r+1][c+1] == true {neighborCount += 1}
    } else if r == 0 && c != 0 && c != 9{
        if before[r+9][c-1] == true {neighborCount += 1}
        if before[r][c-1] == true {neighborCount += 1}
        if before[r+1][c-1] == true {neighborCount += 1}
        if before[r+9][c] == true {neighborCount += 1}
        if before[r+1][c] == true {neighborCount += 1}
        if before[r+9][c+1] == true {neighborCount += 1}
        if before[r][c+1] == true {neighborCount += 1}
        if before[r+1][c+1] == true {neighborCount += 1}
    } else if r == 9 && c != 0 && c != 9{
        if before[r-1][c-1] == true {neighborCount += 1}
        if before[r][c-1] == true {neighborCount += 1}
        if before[r-9][c-1] == true {neighborCount += 1}
        if before[r-1][c] == true {neighborCount += 1}
        if before[r-9][c] == true {neighborCount += 1}
        if before[r-1][c+1] == true {neighborCount += 1}
        if before[r][c+1] == true {neighborCount += 1}
        if before[r-9][c+1] == true {neighborCount += 1}
    } else if c == 0 && r != 0 && r != 9{
        if before[r-1][c+9] == true {neighborCount += 1}
        if before[r][c+9] == true {neighborCount += 1}
        if before[r+1][c+9] == true {neighborCount += 1}
        if before[r-1][c] == true {neighborCount += 1}
        if before[r+1][c] == true {neighborCount += 1}
        if before[r-1][c+1] == true {neighborCount += 1}
        if before[r][c+1] == true {neighborCount += 1}
        if before[r+1][c+1] == true {neighborCount += 1}
    } else if c == 9 && r != 0 && r != 9{
        if before[r-1][c-1] == true {neighborCount += 1}
        if before[r][c-1] == true {neighborCount += 1}
        if before[r+1][c-1] == true {neighborCount += 1}
        if before[r-1][c] == true {neighborCount += 1}
        if before[r+1][c] == true {neighborCount += 1}
        if before[r-1][c-9] == true {neighborCount += 1}
        if before[r][c-9] == true {neighborCount += 1}
        if before[r+1][c-9] == true {neighborCount += 1}
    } else if c == 0 && r == 0{
        if before[r+9][c+9] == true {neighborCount += 1}
        if before[r][c+9] == true {neighborCount += 1}
        if before[r+1][c+9] == true {neighborCount += 1}
        if before[r+9][c] == true {neighborCount += 1}
        if before[r+1][c] == true {neighborCount += 1}
        if before[r+9][c+1] == true {neighborCount += 1}
        if before[r][c+1] == true {neighborCount += 1}
        if before[r+1][c+1] == true {neighborCount += 1}
    } else if c == 9 && r == 9{
        if before[r-1][c-1] == true {neighborCount += 1}
        if before[r][c-1] == true {neighborCount += 1}
        if before[r-9][c-1] == true {neighborCount += 1}
        if before[r-1][c] == true {neighborCount += 1}
        if before[r-9][c] == true {neighborCount += 1}
        if before[r-1][c-9] == true {neighborCount += 1}
        if before[r][c-9] == true {neighborCount += 1}
        if before[r-9][c-9] == true {neighborCount += 1}
    }
    
    return neighborCount
    
}