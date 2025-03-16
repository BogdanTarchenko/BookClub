//
//  AuthorItem.swift
//  BookClub
//
//  Created by Богдан Тарченко on 16.03.2025.
//

import SwiftUI

struct AuthorItem: View {
    var author: Author
    
    var body: some View {
        HStack {
            Image(author.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 48, height: 48)
                .clipped()
                .clipShape(Circle())
            
            Text(author.title)
                .textStyle(.body)
                .foregroundStyle(.accentDark)
            
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.accentLight)
        .clipShape(.rect(cornerRadius: 8))
    }
}
