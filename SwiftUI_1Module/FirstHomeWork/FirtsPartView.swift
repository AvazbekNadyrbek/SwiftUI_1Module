//
//  FirtsPart.swift
//  SwiftUI_1Module
//
//  Created by Авазбек Надырбек уулу on 13.07.25.
//

import SwiftUI

struct FirstPartView: View {
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(.bigImg)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: 300)
                .accessibilityLabel("Decorative background image")
            
            Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod")
                .foregroundStyle(.white)
                .multilineTextAlignment(.leading)
                .padding(.leading, 30)
                .padding(.bottom, 40)
                
        }
    }
}
#Preview {
    FirstPartView()
}
