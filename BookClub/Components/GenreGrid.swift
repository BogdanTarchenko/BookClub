//
//  GenreGrid.swift
//  BookClub
//
//  Created by Богдан Тарченко on 16.03.2025.
//

import SwiftUI

struct GenreGrid: View {
    let genres: [Genre] = [
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
    
    var body: some View {
        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 8) {
            ForEach(genres, id: \.id) { genre in
                GenreItem(genre: genre)
                    .frame(maxHeight: .infinity)
            }
        }
    }
}
