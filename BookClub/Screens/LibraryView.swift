//
//  LibraryView.swift
//  BookClub
//
//  Created by Богдан Тарченко on 15.03.2025.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                Text("БИБЛИОТЕКА")
                    .textStyle(.h1)
                    .foregroundStyle(.customSecondary)
                
                Spacer(minLength: 24)
                
                Text("НОВИНКИ")
                    .textStyle(.h2)
                    .foregroundStyle(.accentDark)
                
                Spacer(minLength: 16)
                
                SlideCarouselView()
                
                Spacer(minLength: 24)
                
                Text("ПОПУЛЯРНЫЕ КНИГИ")
                    .textStyle(.h2)
                    .foregroundStyle(.accentDark)
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .topLeading)
        }
        .background(Color.background)
    }
}
