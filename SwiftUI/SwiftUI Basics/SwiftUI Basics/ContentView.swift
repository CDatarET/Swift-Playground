//
//  ContentView.swift
//  SwiftUI Basics
//
//  Created by CDatarET on 29/09/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 50)
                .overlay(){
                    VStack{
                            Image("Image")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 200)
                                .clipShape(RoundedRectangle(cornerRadius: 50))
                                .padding(15)
                        
                        Text("1956 Porsche 356 Cabriolet")
                            .foregroundStyle(.white)
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(5)
                        
                        Text("This classic piece of history was introduced in 1956 after Porsche's great success into establishing itself in the automobile market")
                            .foregroundStyle(.secondary)
                            .foregroundStyle(.white)
                            .multilineTextAlignment(.center)
                            .lineLimit(3)
                            .truncationMode(.tail)
                            .lineSpacing(1)
                            .padding(5)
                        
                        HStack{
                            RoundedRectangle(cornerRadius: 30)
                                .frame(height: 150)
                                .overlay(){
                                    Text("Custom Vinyl and leather Blend Interior")
                                        .foregroundStyle(.black)
                                }
                            RoundedRectangle(cornerRadius: 30)
                                .frame(height: 150)
                                .overlay(){
                                    Text("Boasting 60 Horsepower")
                                        .foregroundStyle(.black)
                                }
                            RoundedRectangle(cornerRadius: 30)
                                .frame(height: 150)
                                .overlay(){
                                    Text("Available in Red, Silver, Olive, and Blue.")
                                        .foregroundStyle(.black)
                                }
                        }
                        .foregroundStyle(.mint)
                        .padding(5)
                        
                        Text("Experience it yourself")
                            .frame(height: 20)
                            .foregroundStyle(.white)
                            .padding(20)
                    }
                }
                .padding(5)
                .frame(height: 600)
        }
    }
}

#Preview {
    ContentView()
}
