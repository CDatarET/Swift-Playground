//
//  ContentView.swift
//  Sizing and Placement
//
//  Created by CDatarET on 14/10/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [.mint, .cyan, .blue, .indigo], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack(spacing: 16){
                Image(systemName: "moon.fill")
                    .font(.system(size: 60))
                Text("Good Night")
                    .font(.largeTitle)
                    .bold()
            }
        }
    }
}

struct ContentView2: View {
    var body: some View {
        ScrollView{
            LazyVStack(spacing: 16){
                ForEach(1...15, id: \.self){
                    n in
                        RoundedRectangle(cornerRadius: 17)
                        .fill(.blue.opacity(0.15))
                        .frame(height: 100)
                        .overlay{
                            Text("Course \(n)")
                                .font(.headline)
                        }
                }
                .padding()
            }
            .safeAreaPadding(.horizontal, 24)
            .safeAreaPadding(.bottom, 20)
            
            Button("Enroll Now"){
                
            }
            .buttonStyle(.borderedProminent)
            .frame(maxWidth: .infinity)
            .padding()
            .background(.thinMaterial)
        }
    }
}

#Preview {
    ContentView()
}
