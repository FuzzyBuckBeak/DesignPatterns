//
//  ShowCrewViewModel.swift
//  MVVM Pattern
//
//  Created by Apo on 3/15/19.
//  Copyright © 2019 FuzzyBuckbeak. All rights reserved.
//

import Foundation

class ShowCrewViewModel {
    var delegate: ViewController?
    
    var show: Show? {
        didSet {
            guard let show = show else { return }
            updateViewModel(show: show)
        }
    }
    
    var cast: String = ""
    var directors: String = ""
    var producers: String = ""
    var makeArtists: String = ""
    
    
    func updateViewModel(show: Show) {
        cast = getStringFromArray(value: show.cast)
        directors = getStringFromArray(value: show.directors)
        producers = getStringFromArray(value: show.producers)
        makeArtists = getStringFromArray(value: show.makeArtists)
        delegate?.updateView()
    }
    
    func getStringFromArray(value: [String]) -> String {
        return value.joined(separator: ", ")
    }
}
