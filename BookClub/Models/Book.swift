//
//  Book.swift
//  BookClub
//
//  Created by Богдан Тарченко on 15.03.2025.
//

import SwiftUI

struct Book: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let author: String
}
