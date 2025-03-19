//
//  CustomInputField.swift
//  BookClub
//
//  Created by Богдан Тарченко on 14.03.2025.
//

import SwiftUI

enum InputFieldType {
    case email
    case password
}

struct CustomInputField: View {
    var type: InputFieldType
    @Binding var text: String
    @Binding var isPasswordVisible: Bool
    
    var body: some View {
        GeometryReader { geometry in
            HStack {
                Text(type == .email ? "Почта" : "Пароль")
                    .textStyle(.bodySmall)
                    .foregroundColor(.accentMedium)
                
                Spacer()
                
                switch type {
                case .email:
                    TextField("", text: $text)
                        .foregroundColor(.accentLight)
                        .font(.custom("VelaSans-Regular", size: 14))
                        .frame(width: geometry.size.width * 0.7, height: 44)
                case .password:
                    if isPasswordVisible {
                        TextField("", text: $text)
                            .foregroundColor(.accentLight)
                            .font(.custom("VelaSans-Regular", size: 14))
                            .frame(width: geometry.size.width * 0.7, height: 44)
                    } else {
                        SecureField("", text: $text)
                            .foregroundColor(.accentLight)
                            .font(.custom("VelaSans-Regular", size: 14))
                            .frame(width: geometry.size.width * 0.7, height: 44)
                    }
                }
                
                HStack {
                    if !text.isEmpty {
                        if type == .email {
                            Button(action: { text = "" }) {
                                Image("Close")
                                    .foregroundColor(.accentMedium)
                            }
                        } else if type == .password {
                            Button(action: { isPasswordVisible.toggle() }) {
                                Image(isPasswordVisible ? "EyeOff" : "EyeOn")
                                    .foregroundColor(.accentMedium)
                            }
                        }
                    }
                }
                .frame(width: 24)
            }
        }
        .padding(.horizontal, 16)
        .frame(height: 44)
    }
}
