//
//  Home.swift
//  InfiniteLoopingScrollView
//
//  Created by Иван Легенький on 27.12.2023.
//

import SwiftUI

struct Home: View {
    @State private var items: [Item] = [.red, .blue, .green, .yellow, .black].compactMap {
        return .init(color: $0)
    }
    
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                GeometryReader {
                    let size = $0.size
                    
                    LoopingScrollView(items: items, width: size.width, spacing: 0, content: { item in
                        RoundedRectangle(cornerRadius: 15)
                            .fill(item.color.gradient)
                            .padding(.horizontal, 15)
                    })
//                    .contentMargins(.horizontal, 15, for: .scrollContent)
//                    .scrollTargetBehavior(.paging)
                    
                }
                .frame(height: 350)
            }
            .padding(.vertical, 15)
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    ContentView()
}
