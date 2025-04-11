//
//  SlideCarouselCard.swift
//  BookClub
//
//  Created by Богдан Тарченко on 15.03.2025.
//

import SwiftUI

struct SlideCarouselCard: Identifiable, Hashable, Equatable {
    var id: UUID = .init()
    var image: String
    var description: String
    var title: String
    var previousOffset: CGFloat = 0
}
