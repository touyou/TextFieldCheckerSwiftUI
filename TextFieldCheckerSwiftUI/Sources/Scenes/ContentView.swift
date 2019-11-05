//
//  ContentView.swift
//  TextFieldCheckerSwiftUI
//
//  Created by 藤井陽介 on 2019/11/03.
//  Copyright © 2019 touyou. All rights reserved.
//

import SwiftUI
import UIKit

struct ContentView: View {
    init() {
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithOpaqueBackground()
        coloredAppearance.backgroundColor = Color.Saketify.beerYellow.uiColor
        coloredAppearance.shadowImage = UIImage()
        coloredAppearance.shadowColor = nil
        coloredAppearance.titleTextAttributes = [.foregroundColor: Color.Saketify.backgroundColor.uiColor]

        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
        UINavigationBar.appearance().tintColor = Color.Saketify.backgroundColor.uiColor
    }

    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                Image("main_img").resizable()
                Image("wave").resizable().scaledToFit()
                VStack {
                    Spacer()
                    NavigationLink(destination: SignUpView()) {
                        Text("Sign Up")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                    }
                    .frame(width: 200.0, height: 56.0)
                    .background(Color.Saketify.beerYellow)
                    .cornerRadius(28)
                }
                .padding(.trailing, 64.0)
                .padding(.leading, 64.0)
                .padding(.bottom, 64.0)
            }
            .edgesIgnoringSafeArea(.all)
            .navigationBarTitle(Text(""), displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
