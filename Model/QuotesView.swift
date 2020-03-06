//
//  QuotesView.swift
//  Quotes
//
//  Created by Dakota-Cheyenne Brown on 3/5/20.
//  Copyright © 2020 Dakota-Cheyenne Brown. All rights reserved.
//

import SwiftUI

/*
 QuotesView.swift
 Takes the quotes from an array of quotes and
 displays them within a scrollview
 */


struct QuotesView: View {
    var quotes: [Quote]
    var body: some View {
        VStack {
            
            CircleImage(imageName: "lilly")
                .frame(width: 160, height: 160)
                .padding(.top, 90)
                .padding(.bottom, 20)
            
            HStack {
                Text("\(self.quotes.count) Quotes Available")
                    .font(.subheadline)
                    .italic()
                    .foregroundColor(.white)
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(self.quotes, id: \.name) { quote in
                        VStack {
                            CircleImage(imageName: "lilly")
                            Text(#" "\#(quote.quote)" "#)
                                .font(.headline)
                            
                            Divider()
                            
                            Text("By - \(quote.name)")
                                .font(.custom("Helvetica neue", size: 14))
                            .italic()
                        }.frame(width: 300, height: 300)
                        .foregroundColor(.gray)
                        .padding(.all, 4)
                        .background(Color.white)
                        .cornerRadius(10)
                    .overlay(Rectangle().fill(LinearGradient(gradient: Gradient(colors: [.clear, .blue]), startPoint: .center, endPoint: .topLeading))
                        .cornerRadius(10)
                            .clipped()
                            .shadow(radius:5))
                    }
                }
            }
        }
    }
}
