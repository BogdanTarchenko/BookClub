//
//  FavoriteBookItem.swift
//  BookClub
//
//  Created by Богдан Тарченко on 19.03.2025.
//

import SwiftUI

struct FavoriteBookItem: View {
    var book: FavoriteBook
    
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(book.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 126)
                .clipShape(.rect(cornerRadius: 4))
                .clipped()
            
            VStack(alignment: .leading, spacing: 4) {
                Text(book.title.uppercased())
                    .textStyle(.h2)
                    .lineLimit(2)
                    .foregroundStyle(.accentDark)
                
                Text(book.author)
                    .textStyle(.bodySmall)
                    .lineLimit(2)
                    .foregroundStyle(.accentDark)
            }
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
