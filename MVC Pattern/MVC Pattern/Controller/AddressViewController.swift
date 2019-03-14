//
//  ViewController.swift
//  MVC Pattern
//
//  Created by Apo on 3/13/19.
//  Copyright © 2019 FuzzyBuckbeak. All rights reserved.
//

import UIKit

class AddressViewController: UIViewController {

    var address: Address? {
        didSet {
           updateToken()
        }
    }
    var addressView: AddressView! {
        guard isViewLoaded else { return nil }
        return (view as! AddressView)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateToken()
    }

    @IBAction func updateAddress(_ sender: Any) {
        let addressData = addressView?.address.text
        let cityData = addressView?.city.text
        let stateData = addressView?.state.text
        let zipCodeData = addressView?.zipcode.text
        
        address = Address(address: addressData, city: cityData, zipCode: zipCodeData, state: stateData)
    }
    
    func updateAddress() {
        addressView?.address.text = address?.address
        addressView?.city.text = address?.city
        addressView?.state.text = address?.state
        addressView?.zipcode.text = address?.zipCode
    }
    
    func updateToken() {
        guard let _ = address,
              let _ = addressView else { return }
        addressView?.token.text = UUID.init().debugDescription
    }
}

