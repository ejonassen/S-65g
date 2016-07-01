//
//  ViewController.swift
//  Lecture3a
//
//  Created by Eric Jonassen on 6/27/16.
//  Copyright © 2016 Eric Jonassen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // BUTTON CLICK
    // Add Button to view, ctrl click into this window and add as an action
    @IBAction func ButtonClick(sender: AnyObject) {
        print ("clicked!")
    }
    // Text View
    @IBOutlet weak var TextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

