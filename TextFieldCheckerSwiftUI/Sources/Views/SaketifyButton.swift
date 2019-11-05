//
//  SaketifyButton.swift
//  TextFieldCheckerSwiftUI
//
//  Created by 藤井陽介 on 2019/11/03.
//  Copyright © 2019 touyou. All rights reserved.
//

import SwiftUI

struct SaketifyButton: View {
    @Binding var isEnabled: Bool

    var action: (() -> Void)
    var text: String

    var body: some View {
        Button(action: {
            self.action()
        }) {
            Text(self.text)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
        }
        .frame(width: 300.0, height: 56.0)
        .background(self.isEnabled
            ? Color.Saketify.beerYellow
            : Color.Saketify.beerYellow.opacity(0.3))
        .cornerRadius(28)
    }
}

struct NavigationSaketifyLink: View {
    var destination: AnyView
    var text: String

    var body: some View {
        NavigationLink(destination: destination) {
            Text(self.text)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
        }
        .frame(width: 200.0, height: 56.0)
        .background(Color.Saketify.beerYellow)
        .cornerRadius(28)
    }
}
