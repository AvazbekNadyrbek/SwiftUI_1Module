//
//  SecondPartView.swift
//  SwiftUI_1Module
//
//  Created by Авазбек Надырбек уулу on 13.07.25.
//

import SwiftUI

private let thumnails: [ImageResource] = [.imgSmall1, .imgSmall2, .imgSmall3]

struct SecondPartView: View {
    var body: some View {
        HStack {
            ForEach(thumnails, id: \.self) { photo in
                Image(photo)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .clipped()
                    .shadow(radius: 3)
                    .accessibilityLabel("Thumbnails")
            }
        }
    }
}

#Preview {
    SecondPartView()
}
