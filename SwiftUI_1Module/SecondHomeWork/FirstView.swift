//
//  FirstView.swift
//  SwiftUI_1Module
//
//  Created by Авазбек Надырбек уулу on 13.07.25.
//

import SwiftUI

struct HeadTextView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello User")
                .font(.callout)
            Text("Find your specialist")
                .font(.title)
        }
    }
}

#Preview {
    HeadTextView()
}
