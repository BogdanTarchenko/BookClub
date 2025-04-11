//
//  MainViewModel.swift
//  BookClub
//
//  Created by Богдан Тарченко on 20.03.2025.
//

import Foundation
import SwiftUI

final class MainViewModel: ObservableObject {
    // MARK: - Public Properties
    @Published var currentBook: BookDetails
    
    // MARK: - Init
    init() {
        self.currentBook = BookDetailsViewModel.SampleData.book
    }
}
