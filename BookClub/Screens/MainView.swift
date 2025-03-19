//
//  MainView.swift
//  BookClub
//
//  Created by Богдан Тарченко on 15.03.2025.
//

import SwiftUI

struct MainView: View {
    // MARK: - Private Properties
    @State private var selectedTab: CustomTabBar.Tab = .library
    @State private var isLoggedIn: Bool = false
    @State private var searchText: String = ""
    @State private var isBookDetailsPresented: Bool = false
    @State private var selectedBook: BookDetailsModel? = nil
    
    private let currentBook = BookDetailsModel(
        coverImageName: "TestBookBackground",
        title: "Код да Винчи",
        author: "Дэн Браун",
        description: Constants.currentBookDescription,
        progress: 0.2,
        chapters: Constants.currentBookChapters)
    
    var body: some View {
        ZStack {
            contentView
            if shouldShowTabBar {
                tabBarView
            }
        }
        .onChange(of: selectedTab) {
            handleTabChange(selectedTab)
        }
        .fullScreenCover(isPresented: $isBookDetailsPresented) {
            bookDetailsView
        }
    }
}

// MARK: - View Components
private extension MainView {
    @ViewBuilder
    var contentView: some View {
        if !isLoggedIn {
            SignInView(isLoggedIn: $isLoggedIn, selectedTab: $selectedTab)
        } else {
            tabContent
        }
    }
    
    @ViewBuilder
    var tabContent: some View {
        switch selectedTab {
        case .library:
            LibraryView()
        case .search:
            SearchView(searchText: $searchText)
        case .bookmarks:
            BookmarksView()
        case .logout:
            SignInView(isLoggedIn: $isLoggedIn, selectedTab: $selectedTab)
        }
    }
    
    @ViewBuilder
    var tabBarView: some View {
        VStack {
            Spacer()
            CustomTabBar(
                selectedTab: $selectedTab,
                isBookDetailsPresented: $isBookDetailsPresented,
                selectedBook: $selectedBook,
                currentBook: currentBook
            )
        }
    }
    
    @ViewBuilder
    var bookDetailsView: some View {
        if let selectedBook = selectedBook {
            BookDetails(book: selectedBook, isPresented: $isBookDetailsPresented)
        }
    }
    
    var shouldShowTabBar: Bool {
        isLoggedIn && searchText.isEmpty && !isBookDetailsPresented
    }
}

// MARK: - Actions
private extension MainView {
    func handleTabChange(_ newTab: CustomTabBar.Tab) {
        if newTab == .logout {
            isLoggedIn = false
        }
        if newTab == .search {
            searchText = ""
        }
    }
}

// MARK: - Constants
private extension MainView {
    enum Constants {
        static let currentBookDescription: String = """
        Секретный код скрыт в работах Леонардо да Винчи...
        Только он поможет найти христианские святыни, дающие немыслимые власть и могущество...
        Ключ к величайшей тайне, над которой человечество билось веками, наконец может быть найден...
        """
        
        static let currentBookChapters: [Chapter] = [
            Chapter(title: "Факты", isRead: true, isReading: false),
            Chapter(title: "Пролог", isRead: true, isReading: false),
            Chapter(title: "Глава 1", isRead: false, isReading: true),
            Chapter(title: "Глава 2", isRead: false, isReading: false),
            Chapter(title: "Глава 3", isRead: false, isReading: false),
            Chapter(title: "Глава 4", isRead: false, isReading: false),
            Chapter(title: "Глава 5", isRead: false, isReading: false),
            Chapter(title: "Глава 6", isRead: false, isReading: false),
            Chapter(title: "Глава 7", isRead: false, isReading: false),
        ]
    }
}
