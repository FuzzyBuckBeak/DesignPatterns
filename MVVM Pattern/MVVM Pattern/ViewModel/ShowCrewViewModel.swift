//
//  ShowCrewViewModel.swift
//  MVVM Pattern
//
//  Created by Apo on 3/15/19.
//  Copyright © 2019 FuzzyBuckbeak. All rights reserved.
//

import Foundation

class ShowCrewViewModel {
    var show: Show
    
    var cast: String = ""
    var directors: String = ""
    var producers: String = ""
    var makeArtists: String = ""
    
    init(show: Show) {
        self.show = show
        updateViewModel()
    }
    
    func updateViewModel() {
        cast = getStringFromArray(value: show.cast)
        directors = getStringFromArray(value: show.directors)
        producers = getStringFromArray(value: show.producers)
        makeArtists = getStringFromArray(value: show.makeArtists)
    }
    
    func getStringFromArray(value: [String]) -> String {
        return value.joined(separator: ", ")
    }
}
