//
//  ContentView.swift
//  SwiftUI_1Module
//
//  Created by Авазбек Надырбек уулу on 09.07.25.
//

import SwiftUI


struct MainPartView: View {
    var body: some View {
        ScrollView {  
            VStack(alignment: .leading, spacing: 24) {
                FirstPartView()
                    .padding(.top, 16)     
                
                SecondPartView()
                    .padding(.vertical, 0)
                
                ThirsPartView()
                    .padding(.vertical, 10)
                
                FourthPartView()
                    .padding(.bottom, 16)
            }
            .padding(.horizontal, 16)
        }
    }
}
#Preview {
    MainPartView()
}
