//
//  ShowsViewModel.swift
//  MVVM Pattern
//
//  Created by Apo on 3/15/19.
//  Copyright © 2019 FuzzyBuckbeak. All rights reserved.
//

import Foundation

class ShowDetailsViewModel {
    var delegate: ViewController?
    var show: Show? {
        didSet {
            guard let show = show else { return }
            updateViewModel(show: show)
        }
    }
    
    var name: String = ""
    var price: String = ""
    var rating: String = ""
    var genre: String = ""
    
    func updateViewModel(show: Show) {
        name = show.name
        price = convertToDollars(price: show.price)
        rating = convertRatingToStart(rating: show.rating)
        genre = show.genre
        delegate?.updateView()
    }
    
    func convertRatingToStart(rating: Int) -> String {
        switch rating {
        case 1: return "★"
        case 2: return "★★"
        case 3: return "★★★"
        case 4: return "★★★★"
        default: return "★★★★★"
        }
    }
    
    func convertToDollars(price: String) -> String {
        return "$\(price)"
    }
}
