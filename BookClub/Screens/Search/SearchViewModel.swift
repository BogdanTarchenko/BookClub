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
