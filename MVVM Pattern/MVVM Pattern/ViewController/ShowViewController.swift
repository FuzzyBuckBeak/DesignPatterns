//
//  ViewController.swift
//  MVVM Pattern
//
//  Created by Apo on 3/15/19.
//  Copyright © 2019 FuzzyBuckbeak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private let apiManager = APIManager()
    var showDetail: ShowDetailsViewModel = ShowDetailsViewModel()
    var showCrew: ShowCrewViewModel = ShowCrewViewModel()

    var showView: ShowView! {
        guard isViewLoaded else { return nil }
        return (view as! ShowView)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        fetchShowDetails()
        showDetail.delegate = self
        showCrew.delegate = self
    }

    func updateView() {
        DispatchQueue.main.sync {
            showView.showName.text = showDetail.name
            showView.showRating.text = showDetail.rating
            showView.showPrice.text = showDetail.price
            showView.showGenre.text = showDetail.genre
            
            showView.showDirector.text = showCrew.directors
            showView.showArtists.text = showCrew.makeArtists
            showView.showProducers.text = showCrew.producers
            showView.ShowCasrs.text = showCrew.cast
        }
    }
    
    func fetchShowDetails() {
        APIManager.getShowDetails() { response, error in
            if let error = error {
                print("Error: \(error.localizedDescription)")
                return
            }
            guard let show = response else { return }
            self.showDetail.updateViewModel(show: show)
            self.showCrew.updateViewModel(show: show)
        }
    }
}

