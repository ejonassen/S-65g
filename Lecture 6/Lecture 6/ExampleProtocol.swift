//
//  ExampleProtocol.swift
//  Lecture 6
//
//  Created by Eric Jonassen on 7/11/16.
//  Copyright © 2016 Eric Jonassen. All rights reserved.
//



protocol ExampleProtocol {
    var rows: UInt { get set }
    var cols: UInt { get set }
    var delegate: ExampleDelegateProtocol? { get set }
    func step() -> [[Bool]]
}

protocol ExampleDelegateProtocol {
    func example(example: Example, didUpdateRows:UInt)
}


// A class that inherits from ExampleProtocol (dont actually put these in the same file in practice)
class Example : ExampleProtocol {
    var rows: UInt = 0 {
        didSet {
            if let delegate = delegate {
                delegate.example(self, didUpdateRows: self.rows)
            }
        }
    }
    var cols: UInt = 0
    var delegate: ExampleDelegateProtocol?
    func step() -> [[Bool]] {
        return [[false]]
    }
    
}

class ExampleDelegate: ExampleDelegateProtocol {
    func example(example: Example, didUpdateRows: UInt) {
        print("Nothing")
    }
}