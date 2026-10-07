//
//  ContentView.swift
//  Learning App
//
//  Created by CDatarET on 07/10/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            LazyVStack(spacing: 16){
                ForEach(cards) { card in
                    Card(card: card)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
