//
//  Card.swift
//  Learning App
//
//  Created by CDatarET on 07/10/26.
//
import SwiftUI

struct Card : View {
    let card: CardView
    
    var body: some View {
        HStack{
            VStack{
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 70, height: 70)
                    .foregroundStyle(card.color)
                    .overlay(){
                        Image(systemName: card.logo)
                            .foregroundStyle(.white)
                            .font(.largeTitle)
                    }
                Text(card.lessons + " lessons")
            }
            
            VStack(alignment: .leading){
                Text(card.name)
                Text(card.content)
                if(card.level == "BEGINNER"){
                    Text(card.level)
                        .foregroundStyle(.blue)
                }
                else if(card.level == "INTERMEDIATE"){
                    Text(card.level)
                        .foregroundStyle(.purple)
                }
                else{
                    Text(card.level)
                        .foregroundStyle(.green)
                }
            }
            
            Spacer()
            
            Image(systemName: "chevron.right")
        }
        .padding()
    }
}

#Preview {
    Card(card: CardView(level: "BEGINNER", name: "Swift Fundamentals", content: "Variables, functions, and structures", lessons: "8", logo: "book.fill", color: .blue))
}
