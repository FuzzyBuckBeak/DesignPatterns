//
//  AddressView.swift
//  MVC Pattern
//
//  Created by Apo on 3/13/19.
//  Copyright © 2019 FuzzyBuckbeak. All rights reserved.
//

import Foundation
import UIKit

final class AddressView: UIView {
    @IBOutlet weak var address: UITextField!
    @IBOutlet weak var city: UITextField!
    @IBOutlet weak var zipcode: UITextField!
    @IBOutlet weak var state: UITextField!
    
    
    @IBOutlet weak var token: UILabel!
}
