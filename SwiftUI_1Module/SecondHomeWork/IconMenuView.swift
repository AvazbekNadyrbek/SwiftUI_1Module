//
//  IconMenuView.swift
//  SwiftUI_1Module
//
//  Created by Авазбек Надырбек уулу on 13.07.25.
//

import SwiftUI

struct IconMenuView: View {
    /// Controls how large the SF-Symbol should appear.
    let iconSize: CGFloat
    
    init(iconSize: CGFloat = 24) {   // default keeps previous look
        self.iconSize = iconSize
    }
    
    var body: some View {
        HStack(alignment: .center, spacing: 30) {
            IconMenuItem(iconName: "location", title: "Place", bgColor: Color.colorIcon.firstIcon, iconSize: iconSize)
            IconMenuItem(iconName: "phone", title: "Phone", bgColor: Color.colorIcon.secondIcon, iconSize: iconSize)
            IconMenuItem(iconName: "person", title: "User", bgColor: Color.colorIcon.thirdIcon, iconSize: iconSize)
        }
        
    }
}

struct IconMenuItem: View {
    let iconName: String
    let title: String
    let bgColor: Color
    let iconSize: CGFloat            // ← already passed in

    init(iconName: String, title: String, bgColor: Color, iconSize: CGFloat) {
        self.iconName = iconName
        self.title = title
        self.bgColor = bgColor
        self.iconSize = iconSize
    }
    
    var body: some View {
        VStack(spacing: 6) {         // tighter spacing
            Image(systemName: iconName)
                .font(.system(size: iconSize * 0.6))               // full icon size

            Text(title)
                .font(.system(size: iconSize * 0.4, weight: .medium)) // 40 % of icon
        }
        .foregroundStyle(.white)
        .frame(width: iconSize * 2,  // card grows with icon size
               height: iconSize * 2.2)
        .background(bgColor)
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    IconMenuView()
}
