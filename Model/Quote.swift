//
//  Quote.swift
//  Quotes
//
//  Created by Dakota-Cheyenne Brown on 3/5/20.
//  Copyright © 2020 Dakota-Cheyenne Brown. All rights reserved.
//

import SwiftUI
import Foundation

/*
 Quote.swift
 Overlying structure of a quote
 Quotes are made of the quote and the
 name of the person the quote is by
 */

struct Quote: Hashable, Decodable {
    var quote: String
    var name: String
}
