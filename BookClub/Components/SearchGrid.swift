//
//  SearchGrid.swift
//  BookClub
//
//  Created by Богдан Тарченко on 16.03.2025.
//

import SwiftUI

struct SearchGrid: View {
    let results: [SearchResult] = [
        SearchResult(imageName: "TestSearchBook", title: "Swift для детей", author: "Мэтт Маккарти, Глория Уинквист"),
        SearchResult(imageName: "TestSearchBook", title: "Swift для детей", author: "Мэтт Маккарти, Глория Уинквист"),
        SearchResult(imageName: "TestSearchBook", title: "Swift для детей", author: "Мэтт Маккарти, Глория Уинквист"),
        SearchResult(imageName: "TestSearchBook", title: "Swift для детей", author: "Мэтт Маккарти, Глория Уинквист"),
        SearchResult(imageName: "TestSearchBook", title: "Swift для детей", author: "Мэтт Маккарти, Глория Уинквист"),
        SearchResult(imageName: "TestSearchBook", title: "Swift для детей", author: "Мэтт Маккарти, Глория Уинквист"),
        SearchResult(imageName: "TestSearchBook", title: "Swift для детей", author: "Мэтт Маккарти, Глория Уинквист"),
        SearchResult(imageName: "TestSearchBook", title: "Swift для детей", author: "Мэтт Маккарти, Глория Уинквист"),
    ]
    
    var body: some View {
        LazyVGrid(columns: [GridItem(.flexible())], spacing: 16) {
            ForEach(results, id: \.id) { result in
                SearchResultItem(result: result)
                    .frame(maxHeight: .infinity)
            }
        }
    }
}
