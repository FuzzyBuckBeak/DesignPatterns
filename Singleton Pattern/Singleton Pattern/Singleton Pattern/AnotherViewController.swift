//
// AnotherViewController.swift
// Singleton Pattern
//
// Created by: FuzzyBuckBeak on 3/26/19
// Copyright © 2018 FuzzyBuckBeak. All rights reserved.



/*****************************************************************************************************************************





*****************************************************************************************************************************/

import Foundation
import UIKit

class AnotherViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        Logger.shared.save("AnotherViewController: View Did Load")
        // Do any additional setup after loading the view, typically from a nib.
    }
}
