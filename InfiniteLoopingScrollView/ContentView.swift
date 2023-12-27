//
//  ContentView.swift
//  InfiniteLoopingScrollView
//
//  Created by Иван Легенький on 27.12.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
        Home()
            .navigationTitle("Looping ScrollView")
        }
    }
}

#Preview {
    ContentView()
}
