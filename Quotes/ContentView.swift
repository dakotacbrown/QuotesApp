//
//  ContentView.swift
//  Quotes
//
//  Created by Dakota-Cheyenne Brown on 3/5/20.
//  Copyright © 2020 Dakota-Cheyenne Brown. All rights reserved.
//

import SwiftUI

/*
 ContentView.swift
 Takes the QuotesView and displays it on the main
 ContentView. Also adds a background image.
 */

struct ContentView: View {
    var quotes: [Quote]
    var body: some View {
        VStack {
            
            QuotesView(quotes: quotes)
            
            Spacer()
            
        }.background(Image("motivation_bg")
            .resizable()
            .edgesIgnoringSafeArea(.all))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(quotes: quoteData)
    }
}
