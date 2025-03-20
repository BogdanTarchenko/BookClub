//
//  BookDetails.swift
//  BookClub
//
//  Created by Богдан Тарченко on 19.03.2025.
//

import Foundation

struct BookDetails: Identifiable {
    let id = UUID()
    let coverImageName: String
    let title: String
    let author: String
    let description: String
    let progress: Double
    let chapters: [Chapter]
}
