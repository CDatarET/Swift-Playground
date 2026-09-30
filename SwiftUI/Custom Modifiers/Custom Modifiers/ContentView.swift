//
//  ContentView.swift
//  Custom Modifiers
//
//  Created by iOS SDP Mac94 on 30/09/26.
//

import SwiftUI

struct Title: ViewModifier{
    func body(content: Content) -> some View{
        content
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding()
            .background(.mint)
            .clipShape(.rect(cornerRadius: 10))
    }
}

struct Watermark: ViewModifier{
    var text: String
    
    func body(content: Content) -> some View{
        content.overlay(alignment: .bottomTrailing){
            Text(text)
                .font(.caption)
                .foregroundStyle(.white)
                .padding(5)
                .background(.black)
        }
    }
}

extension View{
    func watermarked(with text: String) -> some View{
        modifier(Watermark(text: text))
    }
}

struct ProfilePicture: ViewModifier{
    func body(content: Content) -> some View {
        content
            .clipShape(.circle)
    }
}

extension View{
    func pfp() -> some View{
        modifier(ProfilePicture())
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            Text("Hello, world!")
                .modifier(Title())
            
            Color.indigo
                .frame(width: 300, height: 200)
                .overlay(){
                    Image("Miyabi")
                        .resizable()
                        .scaledToFit()
                        .pfp()
                }
                .watermarked(with: "Chaotic Fried Rice")
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
