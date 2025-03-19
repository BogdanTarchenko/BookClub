//
//  SearchView.swift
//  BookClub
//
//  Created by Богдан Тарченко on 15.03.2025.
//

import SwiftUI

struct SearchView: View {
    // MARK: - Public Properties
    @Binding var searchText: String
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    if searchText.isEmpty {
                        emptySearchContent
                    } else {
                        searchResults
                    }
                }
                .padding()
                .padding(.bottom, Metrics.bottomPadding)
                .frame(maxWidth: .infinity, alignment: .topLeading)
            }
            .scrollIndicators(.hidden)
            .background(Color.background)
            .navigationTitle("")
            .searchable(
                text: $searchText,
                placement: .navigationBarDrawer(displayMode: .always),
                prompt: LocalizedKey.Search.searchPrompt
            )
            .toolbarBackground(Color.background, for: .navigationBar)
        }
    }
}

// MARK: - View Components
private extension SearchView {
    @ViewBuilder
    var emptySearchContent: some View {
        VStack(alignment: .leading, spacing: Metrics.sectionSpacing) {
            RecentRequestsSection()
            GenresSection()
            AuthorsSection()
        }
    }
    
    @ViewBuilder
    var searchResults: some View {
        SearchGrid()
    }
}

// MARK: - Metrics
private extension SearchView {
    enum Metrics {
        static let bottomPadding: CGFloat = 80
        static let sectionSpacing: CGFloat = 24
    }
}
