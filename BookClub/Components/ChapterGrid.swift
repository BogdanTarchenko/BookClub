//
//  ChapterGrid.swift
//  BookClub
//
//  Created by Богдан Тарченко on 19.03.2025.
//

import SwiftUI

struct ChapterGrid: View {
    let chapters: [Chapter]
    
    var body: some View {
        LazyVGrid(columns: [GridItem(.flexible())], spacing: 0) {
            ForEach(chapters, id: \.id) { chapter in
                ChapterItem(chapter: chapter)
                    .frame(maxHeight: .infinity)
            }
        }
    }
}
