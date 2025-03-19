//
//  LocalizedKey.swift
//  BookClub
//
//  Created by Богдан Тарченко on 20.03.2025.
//

import Foundation

struct LocalizedKey: RawRepresentable {
    let rawValue: String

    init(rawValue: String) {
        self.rawValue = rawValue
    }

    var localized: String {
        NSLocalizedString(rawValue, comment: "")
    }
}

extension LocalizedKey {
    enum SignIn {
        static let titleMessage = LocalizedKey(rawValue: "sign_in_title_message").localized
        static let title = LocalizedKey(rawValue: "sign_in_title").localized
        static let buttonTitle = LocalizedKey(rawValue: "sign_in_button_title").localized
        static let emailPlaceholder = LocalizedKey(rawValue: "sign_in_email_placeholder").localized
        static let passwordPlaceholder = LocalizedKey(rawValue: "sign_in_password_placeholder").localized
    }
}
