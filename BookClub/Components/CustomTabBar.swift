//
//  CustomTabBar.swift
//  BookClub
//
//  Created by Богдан Тарченко on 15.03.2025.
//

import SwiftUI

struct CustomTabBar: View {
    @Binding var selectedTab: Tab
    
    enum Tab {
        case library, search, bookmarks, logout
    }
    
    var body: some View {
        VStack {
            Spacer()
            
            ZStack {
                HStack {
                    Spacer()
                    
                    Button(action: {
                        selectedTab = .library
                    }) {
                        Image("Library")
                            .renderingMode(.template)
                            .foregroundColor(selectedTab == .library ? .customWhite : .accentMedium)
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        selectedTab = .search
                    }) {
                        Image("Search")
                            .renderingMode(.template)
                            .foregroundColor(selectedTab == .search ? .customWhite : .accentMedium)
                    }
                    
                    Spacer()
                    
                    Spacer().frame(width: 80)
                    
                    Spacer()
                    
                    Button(action: {
                        selectedTab = .bookmarks
                    }) {
                        Image("Bookmarks")
                            .renderingMode(.template)
                            .foregroundColor(selectedTab == .bookmarks ? .customWhite : .accentMedium)
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        selectedTab = .logout
                    }) {
                        Image("LogOut")
                            .renderingMode(.template)
                            .foregroundColor(selectedTab == .logout ? .customWhite : .accentMedium)
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
