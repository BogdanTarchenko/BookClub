//
//  BookmarksViewModel.swift
//  BookClub
//
//  Created by Богдан Тарченко on 20.03.2025.
//

import Foundation
import SwiftUI

final class BookmarksViewModel: ObservableObject {
    // MARK: - Public Properties
    @Published var currentBook: CurrentBook
    @Published var favoriteBooks: [FavoriteBook]
    @Published var quotes: [Quote]
    
    // MARK: - Init
    init(
        currentBook: CurrentBook? = nil,
        favoriteBooks: [FavoriteBook]? = nil,
        quotes: [Quote]? = nil
    ) {
        self.currentBook = currentBook ?? SampleData.currentBook
        self.favoriteBooks = favoriteBooks ?? SampleData.favoriteBooks
        self.quotes = quotes ?? SampleData.quotes
    }
    
    // MARK: - Public Methods
    func loadData() {
        self.currentBook = SampleData.currentBook
        self.favoriteBooks = SampleData.favoriteBooks
        self.quotes = SampleData.quotes
    }
}

// MARK: - Sample Data
extension BookmarksViewModel {
    enum SampleData {
        static let currentBook = CurrentBook(
            imageName: "TestBook2",
            title: "Код да винчи",
            chapter: "Пролог",
            progress: 0.2
        )
        
        static let favoriteBooks: [FavoriteBook] = [
            FavoriteBook(imageName: "TestSearchBook", title: "Swift для детей", author: "Мэтт Маккарти, Глория Уинквист"),
            FavoriteBook(imageName: "TestSearchBook", title: "Swift для детей", author: "Мэтт Маккарти, Глория Уинквист"),
            FavoriteBook(imageName: "TestSearchBook", title: "Swift для детей", author: "Мэтт Маккарти, Глория Уинквист"),
            FavoriteBook(imageName: "TestSearchBook", title: "Swift для детей", author: "Мэтт Маккарти, Глория Уинквист")
        ]
        
        static let quotes: [Quote] = [
            Quote(text: "Я все еще жив, да да я серьезно все еще живой, я надеюсь успею дописать проект, у меня осталось 2 дня как так", title: "Жизнь мобильщика", author: "Богдан Тарченко"),
            Quote(text: "Я все еще жив, да да я серьезно все еще живой, я надеюсь успею дописать проект, у меня осталось 2 дня как так", title: "Жизнь мобильщика", author: "Богдан Тарченко"),
            Quote(text: "Я все еще жив, да да я серьезно все еще живой, я надеюсь успею дописать проект, у меня осталось 2 дня как так", title: "Жизнь мобильщика", author: "Богдан Тарченко"),
            Quote(text: "Я все еще жив, да да я серьезно все еще живой, я надеюсь успею дописать проект, у меня осталось 2 дня как так", title: "Жизнь мобильщика", author: "Богдан Тарченко"),
            Quote(text: "Я все еще жив, да да я серьезно все еще живой, я надеюсь успею дописать проект, у меня осталось 2 дня как так", title: "Жизнь мобильщика", author: "Богдан Тарченко"),
            Quote(text: "Я все еще жив, да да я серьезно все еще живой, я надеюсь успею дописать проект, у меня осталось 2 дня как так", title: "Жизнь мобильщика", author: "Богдан Тарченко")
        ]
    }
}
