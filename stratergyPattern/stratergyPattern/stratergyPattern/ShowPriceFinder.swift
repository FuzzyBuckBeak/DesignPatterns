//
//  ViewController.swift
//  stratergyPattern
//
//  Created by FuzzyBuckbeak on 3/12/19.
//  Copyright © 2019 FuzzyBuckbeak. All rights reserved.
//

import UIKit

class ShowPriceFinder: UIViewController {

    @IBOutlet weak var movieTitle: UITextField!
    @IBOutlet weak var moviePrice: UILabel!
    @IBOutlet weak var serviceChooser: UISegmentedControl!
    
    var streamingService: StreamingService!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func getPrice(_ sender: Any) {
        let chosenIndex = serviceChooser.selectedSegmentIndex
        streamingService = chosenIndex == 0 ? Netflix() : AmazonPrime()
        let price = streamingService.price(title: movieTitle.text ?? "")
        moviePrice.text = price
    }
}

