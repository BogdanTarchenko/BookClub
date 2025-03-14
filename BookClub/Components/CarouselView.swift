//
//  CarouselView.swift
//  BookClub
//
//  Created by Богдан Тарченко on 14.03.2025.
//

import SwiftUI

struct CarouselView: View {
    let items: [Image] = [
        Image("TestBook1"),
        Image("TestBook2"),
        Image("TestBook3")
    ]
    
    @State private var scrollOffset: CGFloat = 0
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: Constants.spacing) {
                ForEach(Array(items.enumerated()), id: \.offset) { index, item in
                    item
                        .resizable()
                        .scaledToFill()
                        .frame(width: Constants.itemWidth, height: Constants.itemHeight)
                        .cornerRadius(Constants.cornerRadius)
                        .clipped()
                }
                
                ForEach(Array(items.enumerated()), id: \.offset) { index, item in
                    item
                        .resizable()
                        .scaledToFill()
                        .frame(width: Constants.itemWidth, height: Constants.itemHeight)
                        .cornerRadius(Constants.cornerRadius)
                        .clipped()
                }
            }
            .offset(x: scrollOffset, y: 0)
        }
        .disabled(true)
        .onAppear {
            startAutoScroll()
        }
        .frame(height: Constants.itemHeight)
    }
}

// MARK: - Private methods

private extension CarouselView {
    func startAutoScroll() {
        let totalWidth = CGFloat(items.count) * (Constants.itemWidth + Constants.spacing)
        
        withAnimation(.linear(duration: TimeInterval(items.count * 5)).repeatForever(autoreverses: false)) {
            scrollOffset = -totalWidth
        }
    }
}

// MARK: - Constants

private extension CarouselView {
    enum Constants {
        static let itemHeight: CGFloat = UIScreen.main.bounds.height * 0.309
        static let itemWidth: CGFloat = itemHeight * 0.637
        static let spacing: CGFloat = itemWidth / 21.5
        static let cornerRadius: CGFloat = itemWidth / 43
    }
}
