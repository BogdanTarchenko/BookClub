//
//  BookmarksView.swift
//  BookClub
//
//  Created by Богдан Тарченко on 15.03.2025.
//

import SwiftUI

struct BookmarksView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                Text("ЗАКЛАДКИ")
                    .textStyle(.h1)
                    .foregroundStyle(.customSecondary)
                
                Spacer(minLength: 24)
                
                HStack {
                    Text("ЧИТАЕТЕ СЕЙЧАС")
                        .textStyle(.h2)
                        .foregroundStyle(.accentDark)
                    
                    Spacer()
                    
                    PlayButton()
                }
                .frame(height: 48)
                
                Spacer(minLength: 8)
                
                CurrentBookView()
                
                Spacer(minLength: 24)
                
                Text("ИЗБРАННЫЕ КНИГИ")
                    .textStyle(.h2)
                    .foregroundStyle(.accentDark)
                
                Spacer(minLength: 16)
                
                FavoriteBookGrid()
                
                Spacer(minLength: 24)
                
                Text("ЦИТАТЫ")
                    .textStyle(.h2)
                    .foregroundStyle(.accentDark)
                
                Spacer(minLength: 16)
                
                QuotesGrid()
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .topLeading)
        }
        .background(Color.background)
    }
}
