//
// Logger.swift
// Singleton Pattern
//
// Created by: FuzzyBuckBeak on 3/26/19
// Copyright © 2018 FuzzyBuckBeak. All rights reserved.



/*****************************************************************************************************************************





*****************************************************************************************************************************/

import Foundation

class Logger {
    static let shared = Logger()
    
    private init () { }
    
    
    func save(file: String = #file, _ log: String) {
        do {
            let log = "\(file) - \(log)"
            try log.write(toFile: "/Users/Shared/log.txt", atomically: true, encoding: .utf8)
        } catch  {
            print("Error: File not found")
        }
    }
}
