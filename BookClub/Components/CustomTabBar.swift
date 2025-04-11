//
//  CustomTabBar.swift
//  BookClub
//
//  Created by Богдан Тарченко on 15.03.2025.
//

import SwiftUI

struct CustomTabBar: View {
    // MARK: - Public Properties
    @Binding var selectedTab: Tab
    @Binding var isBookDetailsPresented: Bool
    let currentBook: BookDetails
    
    enum Tab {
        case library, search, bookmarks, logout
    }
    
    var body: some View {
        ZStack {
            tabBarBackground
            centerButton
        }
        .frame(height: Metrics.tabBarHeight)
    }
}

// MARK: - View Components
private extension CustomTabBar {
    @ViewBuilder
    var tabBarBackground: some View {
        HStack {
            Spacer()
            
            tabButton(tab: .library, image: ImageAssets.library)
            
            Spacer()
            
            tabButton(tab: .search, image: ImageAssets.search)
            
            Spacer()
            
            Spacer().frame(width: Metrics.centerButtonWidth)
            
            Spacer()
            
            tabButton(tab: .bookmarks, image: ImageAssets.bookmarks)
            
            Spacer()
            
            tabButton(tab: .logout, image: ImageAssets.logout)
            
            Spacer()
        }
        .frame(height: Metrics.backgroundHeight)
        .background(.accentDark)
        .cornerRadius(Metrics.backgroundCornerRadius)
        .padding(.horizontal)
        .padding(.bottom, Metrics.backgroundBottomPadding)
    }
    
    @ViewBuilder
    func tabButton(tab: Tab, image: String) -> some View {
        Button(action: {
            selectedTab = tab
        }) {
            Image(image)
                .renderingMode(.template)
                .foregroundColor(selectedTab == tab ? .customWhite : .accentMedium)
        }
    }
    
    @ViewBuilder
    var centerButton: some View {
        Button(action: {
            isBookDetailsPresented = true
        }) {
            Circle()
                .foregroundColor(.customSecondary)
                .frame(width: Metrics.centerButtonWidth, height: Metrics.centerButtonWidth)
                .overlay(
                    Image(ImageAssets.play)
                        .foregroundColor(.customWhite)
                )
        }
        .offset(y: Metrics.centerButtonOffset)
    }
}

// MARK: - Metrics & Image Assets
private extension CustomTabBar {
    enum Metrics {
        static let tabBarHeight: CGFloat = 80
        static let backgroundHeight: CGFloat = 64
        static let backgroundCornerRadius: CGFloat = 32
        static let backgroundBottomPadding: CGFloat = 16
        static let centerButtonWidth: CGFloat = 80
        static let centerButtonOffset: CGFloat = -8
    }
    
    enum ImageAssets {
        static let library = "Library"
        static let search = "Search"
        static let bookmarks = "Bookmarks"
        static let logout = "LogOut"
        static let play = "Play"
    }
}
