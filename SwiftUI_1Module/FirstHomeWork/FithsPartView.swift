//
//  FithsPartView.swift
//  SwiftUI_1Module
//
//  Created by Авазбек Надырбек уулу on 13.07.25.
//

import SwiftUI

struct FithsPartView: View {
    var body: some View {
        ZStack {
            Button {
                print("Settings button pressed")
            } label: {
                Text("Settings")
                    .font(.headline)            // text style
                    .foregroundStyle(.white)    // white text
                    .padding(.horizontal, 28)   // inner padding
                    .padding(.vertical, 12)
                    .background(Color.blue)     // blue background
                    .clipShape(Capsule())       // capsule shape
            }

        }
    }
}

#Preview {
    FithsPartView()
}