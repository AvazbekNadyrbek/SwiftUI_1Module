//
//  HeaderTextView.swift
//  SwiftUI_1Module
//
//  Created by Авазбек Надырбек уулу on 13.07.25.
//

import SwiftUI

struct HeaderTextView: View {
    var body: some View {
        HStack {
            Text("Top Doctor")
                .font(.title.bold())
            Spacer()
            Text("See all")
                .foregroundStyle(.colorIcon2)
        }
    }
}

#Preview {
    HeaderTextView()
}
