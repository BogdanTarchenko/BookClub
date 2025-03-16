//
//  RequestGrid.swift
//  BookClub
//
//  Created by Богдан Тарченко on 16.03.2025.
//

import SwiftUI

struct RequestGrid: View {
    let requests: [Request] = [
        Request(title: "iOS"),
        Request(title: "Swift"),
        Request(title: "Как достать соседа"),
        Request(title: "Чистый код: создание, анализ и рефакторинг")
    ]
    
    var body: some View {
        LazyVGrid(columns: [GridItem(.flexible())], spacing: 8) {
            ForEach(requests, id: \.id) { request in
                RequestItem(request: request)
            }
        }
    }
}
