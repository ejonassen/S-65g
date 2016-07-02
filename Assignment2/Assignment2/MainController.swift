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
        OutP2.text = "Problem 2 Output!"
    }
    @IBOutlet weak var OutP2: UITextView!
}


class Problem3ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Problem 3"
    }
    @IBAction func RunP3(sender: AnyObject) {
        OutP3.text = "Problem 3 Output!"
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