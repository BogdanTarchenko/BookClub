//
//  BookItem.swift
//  BookClub
//
//  Created by Богдан Тарченко on 15.03.2025.
//

import SwiftUI

struct BookItem: View {
    var book: Book
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Image(book.imageName)
                .resizable()
                .scaledToFill()
                .frame(height: UIScreen.main.bounds.height * 0.204)
                .clipped()
                .cornerRadius(4)
                .padding(.bottom, 4)
            
            Text(book.title)
                .textStyle(.h3)
                .foregroundStyle(.accentDark)
                .lineLimit(2)
            
            Text(book.author)
                .textStyle(.footnote)
                .foregroundStyle(.accentDark)
            
            Spacer()
        }
        .frame(maxHeight: .infinity)
    }
}
