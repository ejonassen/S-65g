//
//  Engine.swift
//  Assignment2
//
//  Created by Eric Jonassen on 7/2/16.
//  Copyright © 2016 Eric Jonassen. All rights reserved.
//

import Foundation

func step(inputArray: Array<Array<Bool>>) -> Array<Array<Bool>> {
    
    var before = inputArray
    var after = before
    
    var r = 0
    var c = 0
    
    
    for first in before{
        for _ in first{
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
                default:
                    after[r][c] = false
                }
            } else {
                switch neighbors {
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