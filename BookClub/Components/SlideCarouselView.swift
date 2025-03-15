//
//  SlideCarouselView.swift
//  BookClub
//
//  Created by Богдан Тарченко on 15.03.2025.
//

import SwiftUI

struct SlideCarouselView: View {
    @State private var cards: [SlideCarouselCard] = [
        .init(image: "TestBook1", description: "Долгожданное продолжение \"Голодных игр\"", title: "РАССВЕТ ЖАТВЫ"),
        .init(image: "TestBook2", description: "Долгожданное продолжение \"Голодных игр\"", title: "РАССВЕТ ЖАТВЫ"),
        .init(image: "TestBook3", description: "Долгожданное продолжение \"Голодных игр\"", title: "РАССВЕТ ЖАТВЫ"),
        .init(image: "TestBook1", description: "Долгожданное продолжение \"Голодных игр\"", title: "РАССВЕТ ЖАТВЫ"),
        .init(image: "TestBook2", description: "Долгожданное продолжение \"Голодных игр\"", title: "РАССВЕТ ЖАТВЫ"),
        .init(image: "TestBook3", description: "Долгожданное продолжение \"Голодных игр\"", title: "РАССВЕТ ЖАТВЫ"),
        .init(image: "TestBook1", description: "Долгожданное продолжение \"Голодных игр\"", title: "РАССВЕТ ЖАТВЫ"),
        .init(image: "TestBook2", description: "Долгожданное продолжение \"Голодных игр\"", title: "РАССВЕТ ЖАТВЫ"),
        .init(image: "TestBook3", description: "Долгожданное продолжение \"Голодных игр\"", title: "РАССВЕТ ЖАТВЫ")
    ]
    
    var body: some View {
        VStack {
            GeometryReader { geometry in
                let size = geometry.size
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 8) {
                        ForEach(cards) { card in
                            CardView(card, screenWidth: size.width)
                        }
                    }
                    .padding(.trailing, size.width - 252)
                    .scrollTargetLayout()
                }
                .scrollTargetBehavior(.viewAligned)
                .clipShape(.rect(cornerRadius: 8))
            }
            .frame(height: 256)
        }
    }
    
    @ViewBuilder
    func CardView(_ card: SlideCarouselCard, screenWidth: CGFloat) -> some View {
        GeometryReader { proxy in
            let size = proxy.size
            let minX = proxy.frame(in: .scrollView).minX
            let reducingWidth = (minX / 260) * 196
            let cappedWidth = min(reducingWidth, 196)
            
            let frameWidth = size.width - (minX > 0 ? cappedWidth : -cappedWidth)
            let isFullyVisible = frameWidth >= 200
            
            ZStack(alignment: .bottom) {
                Image(card.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: size.width, height: size.height)
                    .frame(width: frameWidth < 0 ? 0 : frameWidth)
                    .clipShape(.rect(cornerRadius: 8))
                
                LinearGradient(
                    gradient: Gradient(colors: [
                        .clear,
                        .customBlack.opacity(0.5)
                    ]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .frame(width: size.width, height: size.height)
                .frame(width: frameWidth < 0 ? 0 : frameWidth)
                .blendMode(.multiply)
                .clipShape(.rect(cornerRadius: 8))
                
                if isFullyVisible {
                    SlideCarouselLabel(description: card.description, title: card.title)
                }
            }
            .offset(x: minX > 0 ? 0 : -cappedWidth)
            .offset(x: -card.previousOffset)
        }
        .frame(width: 252, height: 256)
        .offsetX { offset in
            let reducingWidth = (offset / 260) * 196
            if let index = cards.firstIndex(where: { $0.id == card.id }),
               cards.indices.contains(index + 1) {
                cards[index + 1].previousOffset = (offset < 0 ? 0 : reducingWidth)
            }
        }
    }
}
