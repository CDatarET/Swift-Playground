//
//  ContentView.swift
//  Dynamic SwiftUI
//
//  Created by CDatarET on 06/10/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            LazyVStack(spacing: 16){
                ForEach(events) { event in
                    DynamicCard(event: event)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
