//
//  SearchViewModel.swift
//  BookClub
//
//  Created by Богдан Тарченко on 20.03.2025.
//

import SwiftUI

final class SearchViewModel: ObservableObject {
    // MARK: - Public Properties
    @Published var searchResults: [SearchResult]
    @Published var requests: [Request]
    @Published var genres: [Genre]
    @Published var authors: [Author]
    
    @Published var selectedBook: BookDetails?
    @Published var isBookDetailsPresented: Bool = false
    
    // MARK: - Init
    init(
        searchResults: [SearchResult]? = nil,
        requests: [Request]? = nil,
        genres: [Genre]? = nil,
        authors: [Author]? = nil
    ) {
        self.searchResults = searchResults ?? SampleData.searchResults
        self.requests = requests ?? SampleData.requests
        self.genres = genres ?? SampleData.genres
        self.authors = authors ?? SampleData.authors
    }
    
    // MARK: - Public Methods
    func loadData() {
        self.searchResults = SampleData.searchResults
        self.requests = SampleData.requests
        self.genres = SampleData.genres
        self.authors = SampleData.authors
    }
    
    func showBookDetails(for book: SearchResult) {
        selectedBook = BookDetails(
            coverImageName: book.imageName,
            title: book.title,
            author: book.author,
            description: """
            Секретный код скрыт в работах Леонардо да Винчи...
            Только он поможет найти христианские святыни, дающие немыслимые власть и могущество...
            Ключ к величайшей тайне, над которой человечество билось веками, наконец может быть найден...
            """,
            progress: 0.3,
            chapters: [
                Chapter(title: "Пролог", isRead: false, isReading: true),
                Chapter(title: "Глава 1", isRead: false, isReading: false),
                Chapter(title: "Глава 2", isRead: false, isReading: false),
                Chapter(title: "Глава 3", isRead: false, isReading: false),
                Chapter(title: "Глава 4", isRead: false, isReading: false)
            ]
        )
        isBookDetailsPresented = true
    }
    
    func removeRequest(_ request: Request) {
        requests.removeAll { $0.id == request.id }
    }
}

// MARK: - Sample Data
extension SearchViewModel {
    enum SampleData {
        static let searchResults: [SearchResult] = [
            SearchResult(imageName: "TestSearchBook", title: "Swift для детей", author: "Мэтт Маккарти, Глория Уинквист"),
            SearchResult(imageName: "TestSearchBook", title: "Swift для детей", author: "Мэтт Маккарти, Глория Уинквист"),
            SearchResult(imageName: "TestSearchBook", title: "Swift для детей", author: "Мэтт Маккарти, Глория Уинквист"),
            SearchResult(imageName: "TestSearchBook", title: "Swift для детей", author: "Мэтт Маккарти, Глория Уинквист"),
            SearchResult(imageName: "TestSearchBook", title: "Swift для детей", author: "Мэтт Маккарти, Глория Уинквист"),
            SearchResult(imageName: "TestSearchBook", title: "Swift для детей", author: "Мэтт Маккарти, Глория Уинквист"),
            SearchResult(imageName: "TestSearchBook", title: "Swift для детей", author: "Мэтт Маккарти, Глория Уинквист"),
            SearchResult(imageName: "TestSearchBook", title: "Swift для детей", author: "Мэтт Маккарти, Глория Уинквист")
        ]
        
        static let requests: [Request] = [
            Request(title: "iOS"),
            Request(title: "Swift"),
            Request(title: "Как достать соседа"),
            Request(title: "Чистый код: создание, анализ и рефакторинг")
        ]
        
        static let genres: [Genre] = [
            Genre(title: "Классика"),
            Genre(title: "Фэнтези"),
            Genre(title: "Фантастика"),
            Genre(title: "Детектив"),
            Genre(title: "Триллер"),
            Genre(title: "Исторический роман"),
            Genre(title: "Любовный роман"),
            Genre(title: "Приключения"),
            Genre(title: "Поэзия"),
            Genre(title: "Биография"),
            Genre(title: "Для подростков"),
            Genre(title: "Для детей")
        ]
        
        static let authors: [Author] = [
            Author(imageName: "TestAuthor", title: "Братья Стругацкие"),
            Author(imageName: "TestAuthor", title: "Братья Стругацкие"),
            Author(imageName: "TestAuthor", title: "Братья Стругацкие"),
            Author(imageName: "TestAuthor", title: "Братья Стругацкие"),
            Author(imageName: "TestAuthor", title: "Братья Стругацкие"),
            Author(imageName: "TestAuthor", title: "Братья Стругацкие"),
            Author(imageName: "TestAuthor", title: "Братья Стругацкие")
        ]
    }
}
