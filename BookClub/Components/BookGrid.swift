//
//  BookGrid.swift
//  BookClub
//
//  Created by Богдан Тарченко on 15.03.2025.
//

import SwiftUI

struct BookGrid: View {
    // MARK: - Private Properties
    private let books: [Book]
    private let columns: [GridItem]
    private let spacing: CGFloat
    
    // MARK: - Init
    init(books: [Book]? = nil, columns: Int = 3, spacing: CGFloat = 16) {
        self.books = books ?? SampleData.books
        self.columns = Array(repeating: GridItem(.flexible()), count: columns)
        self.spacing = spacing
    }
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: spacing) {
            ForEach(books, id: \.id) { book in
                BookItem(book: book)
            }
        }
    }
}

// MARK: - Sample Data
private extension BookGrid {
    enum SampleData {
        static let books: [Book] = [
            Book(imageName: "TestBook1", title: "ПОНЕДЕЛЬНИК НАЧИНАЕТСЯ В СУББОТУ", author: "Эрик Мария Ремарк"),
            Book(imageName: "TestBook2", title: "КОД ДА ВИНЧИ", author: "Дэн Браун"),
            Book(imageName: "TestBook3", title: "ПРЕСТУПЛЕНИЕ И НАКАЗАНИЕ", author: "Фёдор Достоевский"),
            Book(imageName: "TestBook1", title: "ПОНЕДЕЛЬНИК НАЧИНАЕТСЯ В СУББОТУ", author: "Эрик Мария Ремарк"),
            Book(imageName: "TestBook2", title: "КОД ДА ВИНЧИ", author: "Дэн Браун"),
            Book(imageName: "TestBook3", title: "ПРЕСТУПЛЕНИЕ И НАКАЗАНИЕ", author: "Фёдор Достоевский"),
            Book(imageName: "TestBook1", title: "ПОНЕДЕЛЬНИК НАЧИНАЕТСЯ В СУББОТУ", author: "Эрик Мария Ремарк"),
            Book(imageName: "TestBook2", title: "КОД ДА ВИНЧИ", author: "Дэн Браун"),
            Book(imageName: "TestBook3", title: "ПРЕСТУПЛЕНИЕ И НАКАЗАНИЕ", author: "Фёдор Достоевский"),
            Book(imageName: "TestBook1", title: "ПОНЕДЕЛЬНИК НАЧИНАЕТСЯ В СУББОТУ", author: "Эрик Мария Ремарк"),
            Book(imageName: "TestBook2", title: "КОД ДА ВИНЧИ", author: "Дэн Браун"),
            Book(imageName: "TestBook3", title: "ПРЕСТУПЛЕНИЕ И НАКАЗАНИЕ", author: "Фёдор Достоевский"),
            Book(imageName: "TestBook1", title: "ПОНЕДЕЛЬНИК НАЧИНАЕТСЯ В СУББОТУ", author: "Эрик Мария Ремарк"),
            Book(imageName: "TestBook2", title: "КОД ДА ВИНЧИ", author: "Дэн Браун"),
            Book(imageName: "TestBook3", title: "ПРЕСТУПЛЕНИЕ И НАКАЗАНИЕ", author: "Фёдор Достоевский"),
        ]
    }
}
