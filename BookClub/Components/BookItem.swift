//
//  BookItem.swift
//  BookClub
//
//  Created by Богдан Тарченко on 15.03.2025.
//

import SwiftUI

struct BookItem: View {
    // MARK: Public Properties
    let book: Book
    
    var body: some View {
        VStack(alignment: .leading, spacing: Metrics.contentSpacing) {
            bookCoverImage
            bookDetails
            Spacer()
        }
        .frame(maxHeight: .infinity)
    }
}

// MARK: - View Components
private extension BookItem {
    @ViewBuilder
    var bookCoverImage: some View {
        Image(book.imageName)
            .resizable()
            .scaledToFill()
            .frame(height: Metrics.coverHeight)
            .clipped()
            .cornerRadius(Metrics.coverCornerRadius)
            .padding(.bottom, Metrics.coverBottomPadding)
    }
    
    @ViewBuilder
    var bookDetails: some View {
        VStack(alignment: .leading, spacing: Metrics.textSpacing) {
            Text(book.title)
                .textStyle(.h3)
                .foregroundStyle(.accentDark)
                .lineLimit(Metrics.titleLineLimit)
            
            Text(book.author)
                .textStyle(.footnote)
                .foregroundStyle(.accentDark)
        }
    }
}

// MARK: - Metrics
private extension BookItem {
    enum Metrics {
        static let coverHeight: CGFloat = UIScreen.main.bounds.height * 0.204
        static let coverCornerRadius: CGFloat = 4
        static let coverBottomPadding: CGFloat = 4
        static let contentSpacing: CGFloat = 4
        static let textSpacing: CGFloat = 2
        static let titleLineLimit: Int = 2
    }
}
