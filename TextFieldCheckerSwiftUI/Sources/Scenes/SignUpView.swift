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
    @EnvironmentObject var userState: UserState
    
    var body: some View {
        VStack {
            TextField("メールアドレス", text: $userState.email)
                .padding(.all, 16.0)
                .background(Color.white)
                .foregroundColor(Color.Saketify.backgroundColor)
                .cornerRadius(24.0)
                .padding([.leading, .trailing, .bottom], 8.0)
                .padding(.top, 24.0)
            Text(userState.emailValidationMessage)
                .foregroundColor(Color.red)
                .multilineTextAlignment(.leading)
                .lineLimit(0)
            SecureField("パスワード", text: $userState.password)
                .padding(.all, 16.0)
                .background(Color.white)
                .foregroundColor(Color.Saketify.backgroundColor)
                .cornerRadius(24.0)
                .padding(.all, 8.0)
            Text(userState.passwordValidationMessage)
                .foregroundColor(userState.isPasswordEmpty ? Color.white : Color.red)
                .padding(.bottom, 8.0)
            SaketifyButton(isEnabled: userState.isEnabled, action: {}, text: "Register")
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
