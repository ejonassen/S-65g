//
//  GridView.swift
//  Assignment3
//
//  Created by Eric Jonassen on 7/12/16.
//  Copyright © 2016 Eric Jonassen. All rights reserved.
//

import Foundation
import UIKit


// Create a subclass of UIVIew called Gridview
@IBDesignable class GridView: UIView {
    
    // IBInspectable Properties
    @IBInspectable var rows = 20{
        didSet{
            self.grid = Array(count: rows, repeatedValue: Array(count: cols, repeatedValue: .Empty))
        }
    }
    @IBInspectable var cols = 20{
        didSet{
            self.grid = Array(count: rows, repeatedValue: Array(count: cols, repeatedValue: .Empty))
        }
    }
    @IBInspectable var livingColor: UIColor = UIColor.init(red: 0.3, green: 1, blue: 0.3, alpha: 1)
    @IBInspectable var bornColor: UIColor = UIColor.init(red: 0, green: 1, blue: 0, alpha: 1)
    @IBInspectable var diedColor: UIColor = UIColor.init(red: 0.8, green: 0.8, blue: 0.2, alpha: 1)
    @IBInspectable var emptyColor: UIColor = UIColor.init(red: 0.7, green: 0.7, blue: 0.7, alpha: 1)
    @IBInspectable var gridColor: UIColor = UIColor.blackColor()
    @IBInspectable var gridWidth: CGFloat = 2.0
    
    var grid = [[CellState.Empty]]
    
    
    // implement a drawrect method for gridview
    override func drawRect(gridRect: CGRect) {
        
        let width = bounds.width / CGFloat(rows)
        let height = bounds.height / CGFloat(cols)
        
        // create path, set width
        let path = UIBezierPath()
        path.lineWidth = gridWidth
        
        // set path for rows
        for i in 0...rows {
            let rowY = height * CGFloat(i)
            path.moveToPoint ((CGPoint(x:0, y:rowY)))
            path.addLineToPoint(CGPoint(x:bounds.width, y:rowY))
        }
        // set path for cols
        for i in 0...cols {
            let colX = width * CGFloat(i)
            path.moveToPoint ((CGPoint(x:colX, y:0)))
            path.addLineToPoint(CGPoint(x:colX, y:bounds.height))
        }
        
        // set color and stroke
        gridColor.setStroke()
        path.stroke()
        
        
    }
}