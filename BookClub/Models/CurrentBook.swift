//
//  CurrentBook.swift
//  BookClub
//
//  Created by Богдан Тарченко on 19.03.2025.
//

import SwiftUI

struct CurrentBook: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let chapter: String
    let progress: Double
}
