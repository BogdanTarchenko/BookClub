//
//  SearchView.swift
//  BookClub
//
//  Created by Богдан Тарченко on 15.03.2025.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                Text("НЕДАВНИЕ ЗАПРОСЫ")
                    .textStyle(.h2)
                    .foregroundStyle(.accentDark)
                
                Spacer(minLength: 16)
                
                RequestGrid()
                
                Spacer(minLength: 24)
                
                Text("ЖАНРЫ")
                    .textStyle(.h2)
                    .foregroundStyle(.accentDark)
                
                Spacer(minLength: 16)
                
                GenreGrid()
                
                Spacer(minLength: 24)
                
                Text("АВТОРЫ")
                    .textStyle(.h2)
                    .foregroundStyle(.accentDark)
                
                Spacer(minLength: 16)
                
                AuthorGrid()
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .topLeading)
        }
        .background(Color.background)
    }
}
