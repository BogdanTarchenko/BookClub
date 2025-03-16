//
//  GenreItem.swift
//  BookClub
//
//  Created by Богдан Тарченко on 16.03.2025.
//

import SwiftUI

struct GenreItem: View {
    var genre: Genre
    
    var body: some View {
        HStack {
            Text(genre.title)
                .textStyle(.bodySmall)
                .foregroundStyle(.accentDark)
            
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.accentLight)
        .clipShape(.rect(cornerRadius: 8))
    }
}
