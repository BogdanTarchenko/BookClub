//
//  DividerLine.swift
//  BookClub
//
//  Created by Богдан Тарченко on 14.03.2025.
//

import SwiftUI

struct DividerLine: View {
    var body: some View {
        Rectangle()
            .frame(height: Metrics.height)
            .foregroundColor(.accentMedium)
            .padding(.leading, Metrics.leadingPadding)
    }
}

// MARK: - Metrics
private extension DividerLine {
    enum Metrics {
        static let leadingPadding: CGFloat = 16
        static let height: CGFloat = 0.33
    }
}
