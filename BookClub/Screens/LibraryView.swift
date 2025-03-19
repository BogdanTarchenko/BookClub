//
//  LibraryView.swift
//  BookClub
//
//  Created by Богдан Тарченко on 15.03.2025.
//

import SwiftUI

struct LibraryView: View {
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
            
            BookGrid()
        }
    }
}

// MARK: - Metrics
private extension LibraryView {
    enum Metrics {
        static let sectionSpacing: CGFloat = 24
        static let titleContentSpacing: CGFloat = 16
        static let bottomPadding: CGFloat = 80
    }
}
