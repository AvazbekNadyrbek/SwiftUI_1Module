//
//  FourthPartView.swift
//  SwiftUI_1Module
//
//  Created by Авазбек Надырбек уулу on 13.07.25.
//

import SwiftUI

struct FourthPartView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("About")
                .font(.callout)
                .foregroundColor(.secondary)
            Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod")
        }
    }
}

#Preview {
    FourthPartView()
}
