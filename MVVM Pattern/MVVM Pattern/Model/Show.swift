//
//  Show.swift
//  MVVM Pattern
//
//  Created by Apo on 3/15/19.
//  Copyright © 2019 FuzzyBuckbeak. All rights reserved.
//

import Foundation

struct Show: Decodable {
    let name, price, genre: String
    let rating: Int
    
    let cast, directors, producers, makeArtists: [String]
}
