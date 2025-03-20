//
//  LibraryView.swift
//  BookClub
//
//  Created by Богдан Тарченко on 15.03.2025.
//

import SwiftUI

struct LibraryView: View {
    // MARK: - Private Properties
    @StateObject private var viewModel = LibraryViewModel()
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                headerView
                Spacer(minLength: Metrics.sectionSpacing)
                newBooksSection
                Spacer(minLength: Metrics.sectionSpacing)
                popularBooksSection
            }
            .padding()
            .padding(.bottom, Metrics.bottomPadding)
            .frame(maxWidth: .infinity, alignment: .topLeading)
        }
        .scrollIndicators(.hidden)
        .background(Color.background)
        .onAppear {
            viewModel.loadBooks()
        }
    }
}

// MARK: - View Components
private extension LibraryView {
    @ViewBuilder
    var headerView: some View {
        Text(LocalizedKey.Library.title)
            .textStyle(.h1)
            .foregroundStyle(.customSecondary)
    }
    
    @ViewBuilder
    var newBooksSection: some View {
        VStack(alignment: .leading, spacing: Metrics.titleContentSpacing) {
            Text(LocalizedKey.Library.newBooks)
                .textStyle(.h2)
                .foregroundStyle(.accentDark)
            
            SlideCarouselView()
        }
    }
    
    @ViewBuilder
    var popularBooksSection: some View {
        VStack(alignment: .leading, spacing: Metrics.titleContentSpacing) {
            Text(LocalizedKey.Library.popularBooks)
                .textStyle(.h2)
                .foregroundStyle(.accentDark)
            
            bookGrid
        }
    }
    
    @ViewBuilder
    var bookGrid: some View {
        LazyVGrid(columns: [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ], spacing: Metrics.gridSpacing) {
            ForEach(viewModel.books, id: \.id) { book in
                bookItem(book: book)
            }
        }
    }
    
    @ViewBuilder
    func bookItem(book: Book) -> some View {
        VStack(alignment: .leading, spacing: Metrics.bookItemSpacing) {
            Image(book.imageName)
                .resizable()
                .scaledToFill()
                .frame(height: Metrics.coverHeight)
                .clipped()
                .cornerRadius(Metrics.coverCornerRadius)
                .padding(.bottom, Metrics.coverBottomPadding)
            
            VStack(alignment: .leading, spacing: Metrics.textSpacing) {
                Text(book.title)
                    .textStyle(.h3)
                    .foregroundStyle(.accentDark)
                    .lineLimit(Metrics.titleLineLimit)
                
                Text(book.author)
                    .textStyle(.footnote)
                    .foregroundStyle(.accentDark)
            }
            
            Spacer()
        }
        .frame(maxHeight: .infinity)
    }
}

// MARK: - Metrics
private extension LibraryView {
    enum Metrics {
        // Layout
        static let sectionSpacing: CGFloat = 24
        static let titleContentSpacing: CGFloat = 16
        static let bottomPadding: CGFloat = 80
        
        // Grid
        static let gridSpacing: CGFloat = 16
        
        // Book Item
        static let bookItemSpacing: CGFloat = 4
        static let coverHeight: CGFloat = UIScreen.main.bounds.height * 0.204
        static let coverCornerRadius: CGFloat = 4
        static let coverBottomPadding: CGFloat = 4
        static let textSpacing: CGFloat = 2
        static let titleLineLimit: Int = 2
    }
}
