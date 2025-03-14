//
//  AuthTextFieldsView.swift
//  BookClub
//
//  Created by Богдан Тарченко on 14.03.2025.
//

import SwiftUI

struct AuthTextFieldsView: View {
    @Binding var email: String
    @Binding var password: String
    @State private var isPasswordVisible: Bool = false
    
    var body: some View {
        VStack(spacing: 0) {
            CustomInputField(
                type: .email,
                text: $email,
                isPasswordVisible: $isPasswordVisible
            )
            
            DividerLine()
            
            CustomInputField(
                type: .password,
                text: $password,
                isPasswordVisible: $isPasswordVisible
            )
        }
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(.accentMedium, lineWidth: 1)
        )
        .padding()
    }
}
