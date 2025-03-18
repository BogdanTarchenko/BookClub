//
//  FavoriteBook.swift
//  BookClub
//
//  Created by Богдан Тарченко on 19.03.2025.
//

import SwiftUI

struct FavoriteBook: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let author: String
}
