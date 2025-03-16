//
//  RecentRequestsSection.swift
//  BookClub
//
//  Created by Богдан Тарченко on 16.03.2025.
//

import SwiftUI

struct RecentRequestsSection: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("НЕДАВНИЕ ЗАПРОСЫ")
                .textStyle(.h2)
                .foregroundStyle(.accentDark)
            
            Spacer(minLength: 16)
            
            RequestGrid()
        }
    }
}
