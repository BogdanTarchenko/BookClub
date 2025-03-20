//
//  BookDetailsViewModel.swift
//  BookClub
//
//  Created by Богдан Тарченко on 20.03.2025.
//

import Foundation
import SwiftUI

final class BookDetailsViewModel: ObservableObject {
    // MARK: - Public Properties
    @Published var book: BookDetails
    @Published var formattedDescription: String
    
    // MARK: - Init
    init(book: BookDetails? = nil) {
        self.book = book ?? SampleData.book
        self.formattedDescription = Self.formatDescription(book?.description ?? SampleData.book.description)
    }
    
    // MARK: - Public Methods
    func loadData() {
        self.book = SampleData.book
        self.formattedDescription = Self.formatDescription(SampleData.book.description)
    }
    
    // MARK: - Private Methods
    private static func formatDescription(_ text: String) -> String {
        text.components(separatedBy: "\n")
            .map { $0.trimmingCharacters(in: .whitespaces) }
            .filter { !$0.isEmpty }
            .joined(separator: "\n\n")
    }
}

// MARK: - Sample Data
extension BookDetailsViewModel {
    enum SampleData {
        static let book = BookDetails(
            coverImageName: "TestBookBackground",
            title: "Код да Винчи",
            author: "Дэн Браун",
            description:
"""
Секретный код скрыт в работах Леонардо да Винчи...
Только он поможет найти христианские святыни, дающие немыслимые власть и могущество...
Ключ к величайшей тайне, над которой человечество билось веками, наконец может быть найден... 
""",
            progress: 0.7,
            chapters: [
                Chapter(title: "Пролог", isRead: true, isReading: false),
                Chapter(title: "Глава 1", isRead: true, isReading: false),
                Chapter(title: "Глава 2", isRead: true, isReading: false),
                Chapter(title: "Глава 3", isRead: false, isReading: true),
                Chapter(title: "Глава 4", isRead: false, isReading: false),
                Chapter(title: "Глава 5", isRead: false, isReading: false),
                Chapter(title: "Глава 6", isRead: false, isReading: false),
                Chapter(title: "Глава 7", isRead: false, isReading: false)
            ]
        )
    }
}
