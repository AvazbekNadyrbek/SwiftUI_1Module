//
//  ThirsPartView.swift
//  SwiftUI_1Module
//
//  Created by Авазбек Надырбек уулу on 13.07.25.
//

import SwiftUI

struct ThirsPartView: View {
    var body: some View {
        HStack(spacing: 40) {
            reusableLabel(label: "User Name", icon: .icon1)
            
            reusableLabel(label: "25", icon: .icon2)
        }

    }
}

struct reusableLabel: View {
    let label: String
    let icon: ImageResource
    
    var body: some View {
        Label {
            Text(label)
                .font(.title2)
                .fontWeight(.bold)
        } icon: {
            Image(icon)
        }
    }
}


#Preview {
    ThirsPartView()
}
