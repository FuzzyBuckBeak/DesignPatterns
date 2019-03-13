//
//  StreamingService.swift
//  stratergyPattern
//
//  Created by FuzzyBuckbeak on 3/12/19.
//  Copyright © 2019 FuzzyBuckbeak. All rights reserved.
//

import Foundation

protocol StreamingService {
    var name: String { get }
    func price(title: String) -> String
}
