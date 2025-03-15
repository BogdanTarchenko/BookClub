//
//  MainView.swift
//  BookClub
//
//  Created by Богдан Тарченко on 15.03.2025.
//

import SwiftUI

struct MainView: View {
    @State private var selectedTab: CustomTabBar.Tab = .library
    @State private var isLoggedIn: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                if isLoggedIn {
                    switch selectedTab {
                    case .library:
                        LibraryView()
                    case .search:
                        SearchView()
                    case .bookmarks:
                        BookmarksView()
                    case .logout:
                        SignInView(isLoggedIn: $isLoggedIn, selectedTab: $selectedTab)
                    }
                } else {
                    SignInView(isLoggedIn: $isLoggedIn, selectedTab: $selectedTab)
                }
            }
            
            if isLoggedIn {
                VStack {
                    Spacer()
                    CustomTabBar(selectedTab: $selectedTab)
                }
            }
        }
        .onChange(of: selectedTab) {
            if selectedTab == .logout {
                isLoggedIn = false
            }
        }
    }
}
