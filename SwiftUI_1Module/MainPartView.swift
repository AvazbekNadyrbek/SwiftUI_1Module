//
//  ContentView.swift
//  SwiftUI_1Module
//
//  Created by Авазбек Надырбек уулу on 09.07.25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "globe")
                .font(.system(size: 64))
                .symbolRenderingMode(.hierarchical)
                .foregroundStyle(.blue)
                .shadow(radius: 4)
                .accessibilityLabel("Globe icon")

            Text("Hello, world!")
                .font(.title)
                .fontWeight(.bold)
        }
        .padding()
    }
}


struct MainPart: View {
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(.bigImg)
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity, maxHeight: 300)
                .clipped()
                .overlay(Color.black.opacity(0.3))
                .accessibilityLabel("Decorative background image")
            
            Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod")
                .foregroundStyle(.white)
                .multilineTextAlignment(.leading)
                .padding(EdgeInsets(top: 0, leading: 30, bottom: 30, trailing: 30))
                
        }
        .padding()
    }
}
#Preview {
    MainPart()
}