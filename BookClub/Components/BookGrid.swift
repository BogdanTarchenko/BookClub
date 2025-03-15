//
//  BookGrid.swift
//  BookClub
//
//  Created by Богдан Тарченко on 15.03.2025.
//

import SwiftUI

struct BookGrid: View {
    let books: [Book] = [
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
    
    var body: some View {
        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
            ForEach(books, id: \.id) { book in
                BookItem(book: book)
            }
        }
    }
}
