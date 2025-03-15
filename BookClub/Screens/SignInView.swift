//
//  SignInView.swift
//  BookClub
//
//  Created by Богдан Тарченко on 14.03.2025.
//

import SwiftUI

struct SignInView: View {
    @Binding var isLoggedIn: Bool
    @Binding var selectedTab: CustomTabBar.Tab
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    private var isButtonActive: Bool {
        !email.isEmpty && !password.isEmpty
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            CarouselView()
                .padding(.top, 48)
                .padding(.bottom, 48)
            
            VStack(alignment: .leading, spacing: 8) {
                Text("ОТКРОЙ ДЛЯ СЕБЯ")
                    .textStyle(.h1)
                    .foregroundStyle(.accentLight)
                Text("КНИЖНЫЙ МИР")
                    .textStyle(.title)
                    .foregroundStyle(.customSecondary)
            }
            .padding(.horizontal)
            
            AuthTextFieldsView(email: $email, password: $password)
            
            AuthButton(isActive: isButtonActive, action: {
                withAnimation {
                    isLoggedIn = true
                    selectedTab = .library
                }
            })
            .padding(.bottom, 16)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.accentDark)
    }
}
