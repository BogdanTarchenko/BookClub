//
//  QuoteItem.swift
//  BookClub
//
//  Created by Богдан Тарченко on 19.03.2025.
//

import SwiftUI

struct QuoteItem: View {
    var quote: Quote
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(quote.text)
                    .textStyle(.quote)
                    .foregroundStyle(.customBlack)
                    .lineLimit(nil)
                
                Spacer(minLength: 8)
                
                Text("\(quote.title) • \(quote.author)")
                    .textStyle(.footnote)
                    .foregroundStyle(.accentDark)
                    .lineLimit(2)
            }
            
            Spacer()
        }
        .padding()
        .background(Color.accentLight)
        .clipShape(.rect(cornerRadius: 8))
        .frame(maxHeight: .infinity)
    }
}
