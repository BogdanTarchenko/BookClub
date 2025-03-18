//
//  Quote.swift
//  BookClub
//
//  Created by Богдан Тарченко on 19.03.2025.
//

import Foundation

struct Quote: Identifiable {
    let id = UUID()
    let text: String
    let title: String
    let author: String
}
