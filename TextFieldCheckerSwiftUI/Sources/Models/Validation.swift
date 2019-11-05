//
//  Validation.swift
//  TextFieldCheckerSwiftUI
//
//  Created by 藤井陽介 on 2019/11/03.
//  Copyright © 2019 touyou. All rights reserved.
//

import Foundation

enum Validation: Equatable {
    case success
    case error(message: String, count: Int?)
    case empty
}
