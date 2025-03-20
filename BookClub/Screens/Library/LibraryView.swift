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
                header
                newBooksSection
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
        .fullScreenCover(isPresented: $viewModel.isBookDetailsPresented) {
            if let selectedBook = viewModel.selectedBook {
                BookDetailsView(
                    isPresented: $viewModel.isBookDetailsPresented,
                    book: selectedBook
                )
            }
        }
    }
}

// MARK: - View Components
private extension LibraryView {
    @ViewBuilder
    var header: some View {
        Text(LocalizedKey.Library.title)
            .textStyle(.h1)
            .foregroundStyle(.customSecondary)
            .padding(.bottom, Metrics.sectionSpacing)
    }
    
    @ViewBuilder
    var newBooksSection: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(LocalizedKey.Library.newBooks)
                .textStyle(.h2)
                .foregroundStyle(.accentDark)
            
            Spacer(minLength: Metrics.titleSpacing)
            
            SlideCarouselView()
            
            Spacer(minLength: Metrics.sectionSpacing)
        }
    }
    
    @ViewBuilder
    var popularBooksSection: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(LocalizedKey.Library.popularBooks)
                .textStyle(.h2)
                .foregroundStyle(.accentDark)
            
            Spacer(minLength: Metrics.titleSpacing)
            
            bookGrid
        }
    }
    
    @ViewBuilder
    var bookGrid: some View {
        LazyVGrid(columns: [GridItem(.flexible())], spacing: Metrics.gridSpacing) {
            ForEach(viewModel.books) { book in
                bookItem(book: book)
            }
        }
    }
    
    @ViewBuilder
    func bookItem(book: Book) -> some View {
        Button(action: {
            viewModel.showBookDetails(for: book)
        }) {
            HStack(alignment: .center, spacing: Metrics.bookItemSpacing) {
                Image(book.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: Metrics.bookImageWidth, height: Metrics.bookImageHeight)
                    .clipShape(.rect(cornerRadius: Metrics.bookImageCornerRadius))
                    .clipped()
                
                VStack(alignment: .leading, spacing: Metrics.textSpacing) {
                    Text(book.title.uppercased())
                        .textStyle(.h2)
                        .lineLimit(Metrics.titleLineLimit)
                        .foregroundStyle(.accentDark)
                    
                    Text(book.author)
                        .textStyle(.bodySmall)
                        .lineLimit(Metrics.authorLineLimit)
                        .foregroundStyle(.accentDark)
                }
                
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

// MARK: - Metrics
private extension LibraryView {
    enum Metrics {
        static let bottomPadding: CGFloat = 80
        static let sectionSpacing: CGFloat = 24
        static let titleSpacing: CGFloat = 16
        static let gridSpacing: CGFloat = 8
        static let bookItemSpacing: CGFloat = 16
        static let bookImageWidth: CGFloat = 80
        static let bookImageHeight: CGFloat = 126
        static let bookImageCornerRadius: CGFloat = 4
        static let textSpacing: CGFloat = 4
        static let titleLineLimit: Int = 2
        static let authorLineLimit: Int = 2
    }
}
