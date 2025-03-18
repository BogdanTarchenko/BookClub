//
//  PlayButton.swift
//  BookClub
//
//  Created by Богдан Тарченко on 19.03.2025.
//

import SwiftUI

struct PlayButton: View {
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(.accentDark)
                .frame(width: 40, height: 40)
            
            Image("Play")
                .foregroundColor(.customWhite)
        }
    }
}
