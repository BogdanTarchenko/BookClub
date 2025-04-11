//
//  SignInViewModel.swift
//  BookClub
//
//  Created by Богдан Тарченко on 20.03.2025.
//

import SwiftUI

final class SignInViewModel: ObservableObject {
    // MARK: - Publiс Properties
    @Published var isButtonActive: Bool = false
    @Published var email: String = "" {
        didSet {
            updateButtonState()
        }
    }
    @Published var password: String = "" {
        didSet {
            updateButtonState()
        }
    }
    @Published var isPasswordVisible: Bool = false
    @Published var carouselImages: [Image] = []
    
    // MARK: - Init
    init() {
        self.carouselImages = [
            Image("TestBook1"),
            Image("TestBook2"),
            Image("TestBook3")
        ]
        
        updateButtonState()
    }
    
    // MARK: - Public Methods
    func signIn() -> Bool {
        return isButtonActive
    }
    
    // MARK: - Private Methods
    private func updateButtonState() {
        isButtonActive = !email.isEmpty && !password.isEmpty
    }
}
