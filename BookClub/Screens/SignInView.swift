//
//  SignInView.swift
//  BookClub
//
//  Created by Богдан Тарченко on 14.03.2025.
//

import SwiftUI

struct SignInView: View {
    // MARK: - Properties
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    private var isButtonActive: Bool {
        !email.isEmpty && !password.isEmpty
    }
    
    @State private var navigateToLibrary: Bool = false
    
    // MARK: - Body
    
    var body: some View {
        NavigationStack {
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
                .padding(.horizontal, 16)
                
                AuthTextFieldsView(email: $email, password: $password)
                
                AuthButton(isActive: isButtonActive, action: {
                    navigateToLibrary = true
                })
                
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.accentDark)
            .navigationDestination(isPresented: $navigateToLibrary) {
                LibraryView()
                    .navigationBarBackButtonHidden()
            }
        }
    }
}

// MARK: - Preview

#Preview {
    SignInView()
}
