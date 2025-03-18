//
//  CurrentBookView.swift
//  BookClub
//
//  Created by Богдан Тарченко on 19.03.2025.
//

import SwiftUI

struct CurrentBookView: View {
    var currentBook: CurrentBook = CurrentBook(imageName: "TestBook2", title: "Код да винчи", chapter: "Пролог", progress: 0.2)
    
    var body: some View {
        HStack(alignment: .center) {
            Image(currentBook.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 126)
                .clipShape(.rect(cornerRadius: 4))
                .clipped()
            
            Spacer()
            
            VStack(alignment: .leading) {
                Text(currentBook.title.uppercased())
                    .textStyle(.h2)
                    .foregroundStyle(.accentDark)
                
                Spacer()
                    .frame(height: 4)
                
                Text(currentBook.chapter)
                    .textStyle(.bodySmallBold)
                    .foregroundStyle(.accentDark)
                
                Spacer()
                    .frame(height: 16)
                
                ProgressView(value: currentBook.progress)
                    .background(Color.accentMedium)
                    .tint(.accentDark)
                    .frame(height: 4)
                    .clipShape(.rect(cornerRadius: 4))
            }
            .frame(maxHeight: .infinity, alignment: .center)
        }
    }
}
