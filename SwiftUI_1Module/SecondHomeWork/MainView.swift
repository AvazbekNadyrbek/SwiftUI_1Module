//
//  MainView.swift
//  SwiftUI_1Module
//
//  Created by Авазбек Надырбек уулу on 13.07.25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ScrollView() {
            VStack(alignment: .leading, spacing: 40) {
                TopView()
                HeadTextView()
                IconMenuView(iconSize: 50)
                HeaderTextView()
                MainContent()
                MainContent()
            }
            .padding(30)
        }
        .background(.gray.opacity(0.2))     // gray background2)     // blue background
    }
}

#Preview {
    MainView()
}
