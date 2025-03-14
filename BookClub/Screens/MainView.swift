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
        VStack {
            if isLoggedIn {
                VStack {
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
                    
                    CustomTabBar(selectedTab: $selectedTab)
                }
            } else {
                SignInView(isLoggedIn: $isLoggedIn, selectedTab: $selectedTab)
            }
        }
        .onChange(of: selectedTab) {
            if selectedTab == .logout {
                isLoggedIn = false
            }
        }
    }
}
