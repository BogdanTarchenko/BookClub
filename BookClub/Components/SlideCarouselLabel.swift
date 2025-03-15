//
//  SlideCarouselLabel.swift
//  BookClub
//
//  Created by Богдан Тарченко on 15.03.2025.
//

import SwiftUI

struct SlideCarouselLabel: View {
    let description: String
    let title: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(description)
                .textStyle(.bodySmall)
                .foregroundStyle(.customWhite)
                .lineLimit(2)
            
            Text(title)
                .textStyle(.h2)
                .foregroundStyle(.customWhite)
        }
        .padding(.vertical, 8)
    }
}
