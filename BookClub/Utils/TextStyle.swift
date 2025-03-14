//
//  TextStyle.swift
//  BookClub
//
//  Created by Богдан Тарченко on 14.03.2025.
//

import SwiftUI

enum TextStyle {
    case title
    case h1
    case h2
    case body
    case bodySmall
    case footnote
    case text
    case quote

    var font: Font {
        switch self {
        case .title:
            return .custom("AlumniSans-Bold", size: 96)
        case .h1:
            return .custom("AlumniSans-Bold", size: 48)
        case .h2:
            return .custom("AlumniSans-Bold", size: 24)
        case .body:
            return .custom("VelaSans-Regular", size: 16)
        case .bodySmall:
            return .custom("VelaSans-Regular", size: 14)
        case .footnote:
            return .custom("VelaSans-Regular", size: 10)
        case .text:
            return .custom("Georgia", size: 14)
        case .quote:
            return .custom("Georgia-Italic", size: 16)
        }
    }

    var lineSpacing: CGFloat {
        switch self {
        case .title:
            return 0.8
        case .h1, .h2:
            return 1.0
        case .body, .bodySmall, .footnote, .quote:
            return 1.3
        case .text:
            return 1.5
        }
    }
}
