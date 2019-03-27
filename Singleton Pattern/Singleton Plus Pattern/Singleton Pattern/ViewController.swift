//
// ViewController.swift
// Singleton Pattern
//
// Created by: FuzzyBuckBeak on 3/26/19
// Copyright © 2018 FuzzyBuckBeak. All rights reserved.



/*****************************************************************************************************************************





*****************************************************************************************************************************/

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let some = Logger()
        some.save("SingletonPlus: View Did Load")
        // Do any additional setup after loading the view, typically from a nib.
    }
}

