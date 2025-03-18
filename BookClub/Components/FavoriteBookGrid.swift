//
//  FavoriteBookGrid.swift
//  BookClub
//
//  Created by Богдан Тарченко on 19.03.2025.
//

import SwiftUI

struct FavoriteBookGrid: View {
    let books: [FavoriteBook] = [
        FavoriteBook(imageName: "TestSearchBook", title: "Swift для детей", author: "Мэтт Маккарти, Глория Уинквист"),
        FavoriteBook(imageName: "TestSearchBook", title: "Swift для детей", author: "Мэтт Маккарти, Глория Уинквист"),
        FavoriteBook(imageName: "TestSearchBook", title: "Swift для детей", author: "Мэтт Маккарти, Глория Уинквист"),
        FavoriteBook(imageName: "TestSearchBook", title: "Swift для детей", author: "Мэтт Маккарти, Глория Уинквист")
    ]
    
    var body: some View {
        LazyVGrid(columns: [GridItem(.flexible())], spacing: 8) {
            ForEach(books, id: \.id) { book in
                FavoriteBookItem(book: book)
                    .frame(maxHeight: .infinity)
            }
        }
    }
}
