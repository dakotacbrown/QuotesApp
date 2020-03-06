//
//  Quote.swift
//  Quotes
//
//  Created by Dakota-Cheyenne Brown on 3/5/20.
//  Copyright © 2020 Dakota-Cheyenne Brown. All rights reserved.
//

import SwiftUI
import Foundation

struct Quote: Hashable, Decodable {
    var quote: String
    var name: String
}
