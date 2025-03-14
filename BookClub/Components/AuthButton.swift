//
//  AuthButton.swift
//  BookClub
//
//  Created by Богдан Тарченко on 14.03.2025.
//

import SwiftUI

struct AuthButton: View {
    let isActive: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text("Войти")
                .textStyle(.bodyBold)
                .foregroundColor(isActive ? .accentDark : .accentLight)
                .padding()
                .frame(maxWidth: .infinity)
                .background(isActive ? .customWhite : .accentMedium)
                .cornerRadius(12)
        }
        .padding(.horizontal)
        .disabled(!isActive)
    }
}
