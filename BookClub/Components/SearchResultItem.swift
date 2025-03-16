//
//  SearchResultItem.swift
//  BookClub
//
//  Created by Богдан Тарченко on 16.03.2025.
//

import SwiftUI

struct SearchResultItem: View {
    var result: SearchResult
    
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(result.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 126)
                .clipShape(.rect(cornerRadius: 4))
                .clipped()
            
            VStack(alignment: .leading, spacing: 4) {
                Text(result.title.uppercased())
                    .textStyle(.h2)
                    .lineLimit(2)
                    .foregroundStyle(.accentDark)
                
                Text(result.author)
                    .textStyle(.bodySmall)
                    .lineLimit(2)
                    .foregroundStyle(.accentDark)
            }
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
