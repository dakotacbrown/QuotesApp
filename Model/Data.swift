//
//  Data.swift
//  Quotes
//
//  Created by Dakota-Cheyenne Brown on 3/5/20.
//  Copyright © 2020 Dakota-Cheyenne Brown. All rights reserved.
//

import SwiftUI
import UIKit

/*
 Data.swift
 Loads the json file which houses all of the
 quotes then puts those quotes into an array
 */

let quoteData: [Quote] = load("quotes.json")

func load<T: Decodable>(_ filename: String, as type: T.Type = T.self) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else{
            fatalError("Couldn't find \(filename) in main bundle.")
    }
    do {
        data = try Data (contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle: \n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try
            decoder.decode(T.self, from: data)
        
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
