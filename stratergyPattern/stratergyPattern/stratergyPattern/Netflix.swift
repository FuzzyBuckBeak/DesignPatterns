//
//  Netflix.swift
//  stratergyPattern
//
//  Created by FuzzyBuckbeak on 3/12/19.
//  Copyright © 2019 FuzzyBuckbeak. All rights reserved.
//

import Foundation

class Netflix: StreamingService {
    var name: String = "Netflix"
    
    func price(title: String) -> String {
        //In Actual App we will fetch it from some service
        //Here i will be returning dummy value
        
        return "$23.00"
    }
}
