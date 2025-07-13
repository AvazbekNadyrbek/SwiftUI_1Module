//
//  MainContent.swift
//  SwiftUI_1Module
//
//  Created by Авазбек Надырбек уулу on 13.07.25.
//

import SwiftUI

struct MainContent: View {
    // MARK: - Layout constants
    private let avatarSize = CGSize(width: 100, height: 100)
    private let rowSpacing: CGFloat = 7
    private let backgroundColor: Color
    private let cornerRadius: CGFloat
    
    init () {
        self.backgroundColor = .white
        self.cornerRadius = 20
    }
    
    var body: some View {
        HStack(alignment: .top, spacing: 24) {
            Image(.avatarMainImg)
                .resizable()
                .scaledToFit()
                .frame(width: avatarSize.width, height: avatarSize.height)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .accessibilityLabel("Profile photo")

            RightContentView(rowSpacing: rowSpacing)
        }
        .padding()
        .background(backgroundColor)
        .cornerRadius(20)
    }
}

// MARK: - Right-hand side

struct RightContentView: View {
    let rowSpacing: CGFloat

    var body: some View {
        VStack(alignment: .leading, spacing: rowSpacing) {
            Text("User Name")
                .font(.title2.bold())
                .accessibilityAddTraits(.isHeader)

            Text("Lorem ipsum dolor sit amet")
                .font(.subheadline.weight(.semibold))
                .foregroundStyle(.secondary)

            HStack {
                Image(systemName: "clock.arrow.trianglehead.2.counterclockwise.rotate.90")
                    .foregroundStyle(Color.colorIcon.secondIcon)
                Text("10:40 am – 2:40 pm")
                    .foregroundStyle(.secondary)
            }
            .padding(.vertical, 4)

            HStack {
                Text("$10.50")
                    .foregroundStyle(.secondary)
                Spacer()
                Button("Appointment") {
                    print("Button is pressed on MainContentView")
                }
                .buttonStyle(CapsuleButtonStyle())
            }
        }
    }

    // MARK: - Reusable capsule button style
    struct CapsuleButtonStyle: ButtonStyle {
        func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .font(.headline)
                .foregroundStyle(.white)
                .padding(.horizontal, 18)
                .padding(.vertical, 10)
                .background(
                    Color.colorIcon.secondIcon.opacity(configuration.isPressed ? 0.8 : 1)
                )
                .clipShape(Capsule())
        }
    }
}

#Preview {
    MainContent()
}
