//
//  BookDetails.swift
//  BookClub
//
//  Created by Богдан Тарченко on 19.03.2025.
//

import SwiftUI

struct BookDetails: View {
    let book: BookDetailsModel
    @Binding var isPresented: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    ZStack(alignment: .bottom) {
                        Image(book.coverImageName)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(maxWidth: .infinity, maxHeight: UIScreen.main.bounds.height * 0.435)
                            .clipped()
                        
                        LinearGradient(
                            gradient: Gradient(colors: [
                                Color(.clear),
                                Color(.background)
                            ]),
                            startPoint: .top,
                            endPoint: .bottom
                        )
                        .frame(height: UIScreen.main.bounds.height * 0.435 / 2)
                    }
                    .frame(maxWidth: .infinity, maxHeight: UIScreen.main.bounds.height * 0.435)
                    
                    VStack(alignment: .leading) {
                        
                        HStack (spacing: 8) {
                            ReadButton(action: {
                            })
                            .frame(maxWidth: .infinity)
                            
                            FavoriteButton(action: {
                            })
                            .fixedSize()
                        }
                        .padding(.top, -50)
                        
                        Spacer(minLength: 24)
                        
                        Text(book.title.uppercased())
                            .textStyle(.h1)
                            .foregroundStyle(.accentDark)
                        
                        Spacer(minLength: 8)
                        
                        Text(book.author)
                            .textStyle(.body)
                            .foregroundStyle(.accentDark)
                        
                        Spacer(minLength: 24)
                        
                        Text(book.description)
                            .textStyle(.body)
                            .foregroundStyle(.accentDark)
                            .multilineTextAlignment(.leading)
                        
                        Spacer(minLength: 24)
                        
                        Text("ПРОЧИТАНО")
                            .textStyle(.h2)
                            .foregroundStyle(.accentDark)
                        
                        Spacer(minLength: 16)
                        
                        ProgressView(value: book.progress)
                            .background(Color.accentMedium)
                            .tint(Color.accentDark)
                            .clipShape(.rect(cornerRadius: 4))
                        
                        Spacer(minLength: 24)
                        
                        Text("ОГЛАВЛЕНИЕ")
                            .textStyle(.h2)
                            .foregroundStyle(.accentDark)
                        
                        Spacer(minLength: 8)
                        
                        ChapterGrid(chapters: book.chapters)
                    }
                    .padding()
                }
            }
            .background(Color.background)
            .scrollIndicators(.hidden)
            
            Button(action: {
                isPresented = false
            }) {
                HStack {
                    Image("ArrowLeft")
                        .foregroundColor(.customWhite)
                    Text("Назад")
                        .textStyle(.body)
                        .foregroundColor(.customWhite)
                }
            }
            .padding()
            .padding(.top, 64)
        }
        .edgesIgnoringSafeArea(.top)
    }
}
