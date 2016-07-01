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
}


class Problem3ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Problem 3"
    }
}

class Problem4ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Problem 4"
    }
}