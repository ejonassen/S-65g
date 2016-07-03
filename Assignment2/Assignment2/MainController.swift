//
//  ViewController.swift
//  Assignment2
//
//  Created by Eric Jonassen on 7/1/16.
//  Copyright © 2016 Eric Jonassen. All rights reserved.
//

import UIKit

class MainController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

//  Create Subclasses for Problem 2-4 View Controllers
class Problem2ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Problem 2"
    }
    @IBAction func RunP2(sender: AnyObject) {
        //OutP2.text = "Problem 2 Output!"
        
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
            for _ in outer{
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
        OutP2.text = ("Before: " + String(beforeAlive) + "\nAfter: " + String(afterAlive))
        
    }
    @IBOutlet weak var OutP2: UITextView!
}


class Problem3ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Problem 3"
    }
    @IBAction func RunP3(sender: AnyObject) {
        
        // create 2d array of bools
        let col = 10
        let row = 10
        
        var before = Array<Array<Bool>>()
        for _ in 0..<row{
            before.append(Array(count:col, repeatedValue:false))
        }
        
        var r = 0
        var c = 0
        var beforeAlive = 0
        var afterAlive = 0
        
        // Set initial values
        for outer in before{
            for _ in outer{
                if arc4random_uniform(3) == 1{
                    before[r][c] = true
                    beforeAlive += 1
                }
                c += 1
            }
            c = 0
            r += 1
        }
        // Call to step function for cell logic
        // After initial setup happens above, the initial array "before" is passed to step
        var after = step(before)
        
        // Simple loop to count cells living in "after," no actual logic
        r = 0
        c = 0
        for first in after{
            for _ in first{
                if after[r][c] == true{
                    afterAlive += 1
                }
                c += 1
            }
            c = 0
            r += 1
        }
        
        OutP3.text = ("Before: " + String(beforeAlive) + "\nAfter: " + String(afterAlive))

    }
    @IBOutlet weak var OutP3: UITextView!
    
}

class Problem4ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Problem 4"
    }
    @IBAction func RunP4(sender: AnyObject) {
        OutP4.text = "Problem 4 Output!"
    }
    @IBOutlet weak var OutP4: UITextView!
}