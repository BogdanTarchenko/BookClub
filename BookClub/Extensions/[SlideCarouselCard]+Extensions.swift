//
//  [SlideCarouselCard]+Extensions.swift
//  BookClub
//
//  Created by Богдан Тарченко on 15.03.2025.
//

import SwiftUI

extension [SlideCarouselCard] {
    func indexOf(_ card: SlideCarouselCard) -> Int {
        return self.firstIndex(of: card) ?? 0
    }
}
