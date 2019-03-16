//
//  ShowsViewModel.swift
//  MVVM Pattern
//
//  Created by Apo on 3/15/19.
//  Copyright © 2019 FuzzyBuckbeak. All rights reserved.
//

import Foundation

class ShowDetailsViewModel {
    var show: Show
    
    var name: String = ""
    var price: String = ""
    var rating: String = ""
    var genre: String = ""
    
    init(show: Show) {
       self.show = show
       updateViewModel()
    }
    
    func updateViewModel() {
        name = show.name
        price = convertToDollars(price: show.price)
        rating = convertRatingToStart(rating: show.rating)
        genre = show.genre
    }
    
    func convertRatingToStart(rating: Int) -> String {
        switch rating {
        case 1: return "*"
        case 2: return "**"
        case 3: return "***"
        case 4: return "****"
        default: return "*****"
        }
    }
    
    func convertToDollars(price: String) -> String {
        return "$\(price)"
    }
}
