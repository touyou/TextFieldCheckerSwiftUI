//
//  SignUpView.swift
//  TextFieldCheckerSwiftUI
//
//  Created by 藤井陽介 on 2019/11/03.
//  Copyright © 2019 touyou. All rights reserved.
//

import SwiftUI
import UIKit

struct SignUpView: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var isEnabled: Bool = false
    
    var body: some View {
        VStack {
            TextField("メールアドレス", text: $email)
                .padding(.all, 16.0)
                .background(Color.white)
                .cornerRadius(24.0)
                .padding([.leading, .trailing, .bottom], 8.0)
                .padding(.top, 24.0)
            SecureField("パスワード", text: $password)
                .padding(.all, 16.0)
                .background(Color.white)
                .cornerRadius(24.0)
                .padding(.all, 8.0)
            SaketifyButton(isEnabled: $isEnabled, action: {}, text: "Register")
                .padding(.top, 8.0)
            Spacer()
        }
        .background(Color.Saketify.backgroundColor)
        .edgesIgnoringSafeArea(.bottom)
        .navigationBarTitle("新規登録", displayMode: .inline)
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
