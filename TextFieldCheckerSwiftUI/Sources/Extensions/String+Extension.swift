//
//  String+Extension.swift
//  TextFieldCheckerSwiftUI
//
//  Created by 藤井陽介 on 2019/11/03.
//  Copyright © 2019 touyou. All rights reserved.
//

import Foundation

extension String {

    var isEmail: Bool {
        let emailRegex = "[A-Z0-9a-z][A-Z0-9a-z._%+-]*@[A-Za-z0-9][A-Za-z0-9.-]*\\.[A-Za-z]{2,6}"
        return predicate(by: emailRegex)
    }

    var isPassword: Bool {
        let passwordRegex = "(?=.*?[a-z])(?=.*?[0-9]).{8,}"
        return predicate(by: passwordRegex)
    }

    var hasCharacter: Bool {
        let characterRegex = "(?=.*?[a-z]).{1,}"
        return predicate(by: characterRegex)
    }

    var hasNumber: Bool {
        let numberRegex = "(?=.*?[0-9]).{1,}"
        return predicate(by: numberRegex)
    }

    var isOverEightLength: Bool {
        let overEightLengthRegex = "(?=.*?).{8,}"
        return predicate(by: overEightLengthRegex)
    }

    private func predicate(by regex: String) -> Bool {
        return NSPredicate(format: "SELF MATCHES %@", regex).evaluate(with: self)
    }
}
