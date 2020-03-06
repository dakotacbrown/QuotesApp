//
//  CircleImage.swift
//  Quotes
//
//  Created by Dakota-Cheyenne Brown on 3/5/20.
//  Copyright © 2020 Dakota-Cheyenne Brown. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var imageName: String
    var body: some View {
        
        Image(imageName)
        .resizable()
        .clipShape(Circle())
        .overlay(Circle()
            .stroke(Color.gray, lineWidth: 2))
        .shadow(radius: 10)
        .frame(width: 100, height: 100)
        .padding(.top, 90)
        .padding(.bottom, 20)
    }
}
