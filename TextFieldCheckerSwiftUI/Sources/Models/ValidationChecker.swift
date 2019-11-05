//
//  ValidationChecker.swift
//  TextFieldCheckerSwiftUI
//
//  Created by 藤井陽介 on 2019/11/03.
//  Copyright © 2019 touyou. All rights reserved.
//

import Foundation

final class ValidationChecker {

    static func validateEmail(_ email: String) -> Validation {

        if email.isEmpty {

            return .empty
        } else if email.isEmail {

            return .success
        } else {

            return .error(message: "無効なメールアドレスです。", count: nil)
        }
    }

    static func validatePassword(_ password: String) -> Validation {

        guard !password.isEmpty else { return .empty }

        var messages: [String] = []
        if !password.hasCharacter {
            messages.append("・半角英字を含めてください。")
        }
        if !password.hasNumber {
            messages.append("・数字を含めてください。")
        }
        if !password.isOverEightLength {
            messages.append("・８文字以上にしてください。")
        }

        if messages.count > 0 {
            return .error(message: messages.joined(separator: "\n"), count: messages.count)
        }

        return .success
    }
}
