//
//  RequestItem.swift
//  BookClub
//
//  Created by Богдан Тарченко on 16.03.2025.
//

import SwiftUI

struct RequestItem: View {
    var request: Request
    
    var body: some View {
        HStack {
            Image("History")
                .renderingMode(.template)
                .foregroundStyle(.accentDark)
                .padding(.trailing, 8)
            
            Text(request.title)
                .textStyle(.bodySmall)
                .foregroundStyle(.accentDark)
                .lineLimit(1)
            
            Spacer()
            
            Button(action: {
                
            }) {
                Image("Close")
                    .renderingMode(.template)
                    .foregroundStyle(.accentDark)
            }
        }
        .padding()
        .background(Color.accentLight)
        .clipShape(.rect(cornerRadius: 8))
        .frame(maxHeight: .infinity)
    }
}
