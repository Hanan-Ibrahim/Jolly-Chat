//
//  Constants.swift
//  Jolly Chat
//
//  Created by Hanoudi on 7/11/20.
//  Copyright © 2020 Hanan. All rights reserved.
//

import Foundation

struct K {
    static let appName = "✿ Jolly Chat ✿"
    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "MessageCell"
    static let registerSegue = "RegisterToChat"
    static let loginSegue = "LoginToChat"
    
    struct BrandColors {
        static let orange = "BrandOrange"
        static let lightOrange = "BrandLightOrange"
        static let yellow = "BrandYellow"
        static let lightYellow = "BrandLightYellow"
    }
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
}
