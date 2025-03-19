//
//  ChapterItem.swift
//  BookClub
//
//  Created by Богдан Тарченко on 19.03.2025.
//

import SwiftUI

struct ChapterItem: View {
    var chapter: Chapter
    
    var body: some View {
        HStack(alignment: .center) {
            Text(chapter.title)
                .textStyle(chapter.isReading ? .bodyBold : .body)
                .foregroundStyle(.accentDark)
                .lineLimit(1)
            
            Spacer()
            
            if chapter.isRead {
                Image("Read")
                    .renderingMode(.template)
                    .resizable()
                    .foregroundStyle(.accentMedium)
                    .frame(width: 24, height: 24)
            }
            
            else if chapter.isReading {
                Button(action: {
                    
                }) {
                    Image("ReadingNow")
                        .renderingMode(.template)
                        .resizable()
                        .foregroundStyle(.accentDark)
                        .frame(width: 24, height: 24)
                }
            }
        }
        .padding(.vertical)
        .frame(maxHeight: .infinity)
    }
}
