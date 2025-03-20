//
//  LibraryViewModel.swift
//  BookClub
//
//  Created by Богдан Тарченко on 15.03.2025.
//

import Foundation
import SwiftUI

final class LibraryViewModel: ObservableObject {
    // MARK: - Public Properties
    @Published var books: [Book]
    
    // MARK: - Init
    init(books: [Book]? = nil) {
        self.books = books ?? SampleData.books
    }
    
    // MARK: - Public Methods
    func loadBooks() {
        self.books = SampleData.books
    }
}

// MARK: - Sample Data
extension LibraryViewModel {
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
