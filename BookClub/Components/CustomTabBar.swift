//
//  CustomTabBar.swift
//  BookClub
//
//  Created by Богдан Тарченко on 15.03.2025.
//

import SwiftUI

struct CustomTabBar: View {
    var body: some View {
        VStack {
            Spacer()
            
            ZStack {
                HStack {
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        Image("Library")
                            .foregroundColor(.customWhite)
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        Image("Search")
                            .foregroundColor(.customWhite)
                    }
                    
                    Spacer()
                    
                    Spacer().frame(width: 80)
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        Image("Bookmarks")
                            .foregroundColor(.customWhite)
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        Image("LogOut")
                            .foregroundColor(.customWhite)
                    }
                    
                    Spacer()
                }
                .frame(height: 64)
                .background(.accentDark)
                .cornerRadius(30)
                .padding(.horizontal)
                .padding(.bottom, 16)
                
                Button(action: {
                    
                }) {
                    Circle()
                        .foregroundColor(.customSecondary)
                        .frame(width: 80, height: 80)
                        .overlay(
                            Image("Play")
                                .foregroundColor(.customWhite)
                        )
                }
                .offset(y: -8)
            }
            .frame(height: 80)
        }
    }
}
