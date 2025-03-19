//
//  ReadButton.swift
//  BookClub
//
//  Created by Богдан Тарченко on 19.03.2025.
//

import SwiftUI

struct ReadButton: View {
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack(alignment: .center, spacing: 8) {
                Spacer()
                
                Image("Play")
                    .resizable()
                    .frame(width: 18, height: 18)
                    .foregroundStyle(.customWhite)
                Text("Читать")
                    .textStyle(.bodyBold)
                    .foregroundStyle(.customWhite)
                
                Spacer()
            }
        }
        .padding()
        .background(Color.accentDark)
        .frame(height: 50)
        .clipShape(.rect(cornerRadius: 12))
    }
}
