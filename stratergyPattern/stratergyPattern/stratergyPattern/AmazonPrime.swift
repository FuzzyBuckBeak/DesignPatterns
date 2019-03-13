//
//  AmazonPrime.swift
//  stratergyPattern
//
//  Created by FuzzyBuckbeak on 3/12/19.
//  Copyright © 2019 FuzzyBuckbeak. All rights reserved.
//

import Foundation

class AmazonPrime: StreamingService {
    var name: String = "AmazonPrime"
    
    func price(title: String) -> String {
        //In Actual App we will fetch it from some service
        //Here i will be returning dummy value
        
        return "$13.00"
    }
}
