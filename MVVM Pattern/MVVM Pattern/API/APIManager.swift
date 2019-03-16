//
//  APIManager.swift
//  MVVM Pattern
//
//  Created by Apo on 3/15/19.
//  Copyright © 2019 FuzzyBuckbeak. All rights reserved.
//

import Foundation

class APIManager {

    
    class func getShowDetails(completionHandler: @escaping (_: Show?, _:Error?) -> ()) {
        let url = "https://raw.githubusercontent.com/FuzzyBuckBeak/DesignPatterns/master/MVVM%20Pattern/MVVM%20Pattern/Contents/ShowBuzz.json"
        getDataFromURL(urlString: url) { (data, error) in
            guard let data = data, error == nil else {
                print("Failed to get data")
                return completionHandler(nil, error)
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let show = try decoder.decode(Show.self, from: data)
                return completionHandler(show, nil)
            } catch let error {
                print("Error: \(error.localizedDescription)")
                return completionHandler(nil, error)
            }
        }
    }
    
   class func getDataFromURL(urlString: String, completionHandler: @escaping (_: Data?, _:Error?) -> Void) {
        guard let url = URL(string: urlString) else {
            print("Error: Cannot create URL from string")
            return
        }
        let urlRequest = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: urlRequest) { (data, _, error) in
            guard error == nil else {
                print("Error calling api")
                return completionHandler(nil, error)
            }
            guard let responseData = data else {
                print("Data is nil")
                return completionHandler(nil, error)
            }
            completionHandler(responseData, nil)
        }
        task.resume()
    }
}
