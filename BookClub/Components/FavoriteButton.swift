//
//  ReadButton 2.swift
//  BookClub
//
//  Created by Богдан Тарченко on 19.03.2025.
//

import SwiftUI

struct FavoriteButton: View {
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack(alignment: .center, spacing: 8) {
                Image("Bookmarks")
                    .renderingMode(.template)
                    .resizable()
                    .frame(width: 18, height: 18)
                    .foregroundStyle(.accentDark)
                Text("В избранное")
                    .textStyle(.bodyBold)
                    .foregroundStyle(.accentDark)
            }
        }
        .padding()
        .background(Color.accentLight)
        .frame(height: 50)
        .clipShape(.rect(cornerRadius: 12))
    }
}
