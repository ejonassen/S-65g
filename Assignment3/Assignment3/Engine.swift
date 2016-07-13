//
//  Engine.swift
//  Assignment3
//
//  Created by Eric Jonassen on 7/11/16.
//  Copyright © 2016 Eric Jonassen. All rights reserved.
//

import Foundation

// 1: Create a swift enum called cellstate
enum CellState: String{
    
    // cases & values
    case Living = "Living"
    case Born = "Born"
    case Died = "Died"
    case Empty = "Empty"
    
    //description method to return Raw Values
    func description()->String{
        switch self{
        case .Living:
            return CellState.Living.rawValue
        case .Born:
            return CellState.Born.rawValue
        case .Died:
            return CellState.Died.rawValue
        default:
            return CellState.Empty.rawValue
        }
    }
    
    // allvalues method to return available values as an array
    func allValues()->[String]{
        return ["Living","Born","Died","Empty"]
    }
    
    // toggle method
    func toggle(value:CellState)->CellState{
        if value == .Empty || value == .Died{
            return .Living
        } else {
            return .Empty
        }
    }
}