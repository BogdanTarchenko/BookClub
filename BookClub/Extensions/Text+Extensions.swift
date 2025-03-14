//
//  Text+Extensions.swift
//  BookClub
//
//  Created by Богдан Тарченко on 14.03.2025.
//

import SwiftUI

extension Text {
    func textStyle(_ style: TextStyle) -> some View {
        self
            .font(style.font)
            .lineSpacing(style.lineSpacing)
    }
}
