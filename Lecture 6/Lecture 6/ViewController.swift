//
//  ViewController.swift
//  Lecture 6
//
//  Created by Eric Jonassen on 7/11/16.
//  Copyright © 2016 Eric Jonassen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ExampleDelegateProtocol {

    var example: Example!
    @IBOutlet weak var Rows: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        example = Example()
        example.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func increment(sender: AnyObject) {
        example.rows += 10
    }
    
    func example(example: Example, didUpdateRows modelRows: UInt) {
        Rows.text = String(modelRows)
    }

}

