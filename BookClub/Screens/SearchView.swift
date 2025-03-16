//
//  SearchView.swift
//  BookClub
//
//  Created by Богдан Тарченко on 15.03.2025.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    if searchText.isEmpty {
                        RecentRequestsSection()
                        Spacer(minLength: 24)
                        GenresSection()
                        Spacer(minLength: 24)
                        AuthorsSection()
                    } else {
                        SearchResultsSection()
                    }
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .topLeading)
            }
            .background(Color.background)
            .navigationTitle("")
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "Поиск по книгам")
            .toolbarBackground(Color.background, for: .navigationBar)
        }
    }
}
