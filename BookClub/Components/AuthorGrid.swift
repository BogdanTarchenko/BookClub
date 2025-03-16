//
//  AuthorGrid.swift
//  BookClub
//
//  Created by Богдан Тарченко on 16.03.2025.
//

import SwiftUI

struct AuthorGrid: View {
    let authors: [Author] = [
        Author(imageName: "TestAuthor", title: "Братья Стругацкие"),
        Author(imageName: "TestAuthor", title: "Братья Стругацкие"),
        Author(imageName: "TestAuthor", title: "Братья Стругацкие"),
        Author(imageName: "TestAuthor", title: "Братья Стругацкие"),
        Author(imageName: "TestAuthor", title: "Братья Стругацкие"),
        Author(imageName: "TestAuthor", title: "Братья Стругацкие"),
        Author(imageName: "TestAuthor", title: "Братья Стругацкие")
    ]
    
    var body: some View {
        LazyVGrid(columns: [GridItem(.flexible())], spacing: 8) {
            ForEach(authors, id: \.id) { author in
                AuthorItem(author: author)
                    .frame(maxHeight: .infinity)
            }
        }
    }
}
