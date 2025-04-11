//
//  Chapter.swift
//  BookClub
//
//  Created by Богдан Тарченко on 19.03.2025.
//

import Foundation

struct Chapter: Identifiable {
    let id = UUID()
    let title: String
    let isRead: Bool
    let isReading: Bool
}
