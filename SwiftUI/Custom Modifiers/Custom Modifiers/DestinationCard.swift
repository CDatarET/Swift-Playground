//
//  DestinationCard.swift
//  Custom Modifiers
//
//  Created by CDatarET on 30/09/26.
//
import SwiftUI

struct DestinationCard: View{
    var image: String
    var tag: String
    var destination: String
    var location: String
    var rating: Double
    var cost: Double
    
    var body: some View{
        ZStack{
            Color.indigo
                .frame(height: 450)
                .clipShape(RoundedRectangle(cornerRadius: 20))
            VStack{
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .clipShape(.rect(cornerRadius: 30))
                    .overlay(alignment: .topTrailing){
                        Text(tag)
                            .font(.caption)
                            .foregroundStyle(.white)
                            .padding(5)
                            .background(.blue)
                            .clipShape(.rect(cornerRadius: 20))
                            .padding(10)
                    }
                
                HStack{
                    Text(destination)
                        .font(.title)
                        .bold()
                    
                    Spacer()
                }
                
                HStack{
                    HStack{
                        Image(systemName: "location.fill")
                        Text(location)
                    }
                    .padding()
                    
                    HStack{
                        Image(systemName: "star.fill")
                        Text(String(rating))
                    }
                    .foregroundStyle(.yellow)
                    .padding()
                    
                    Text("$" + String(cost))
                        .foregroundStyle(.green)
                        .padding()
                }
                .bold()
                
                Text("View Details")
                    .foregroundStyle(.white)
                    .padding(10)
                    .background(.blue)
                    .clipShape(.capsule)
            }
            .padding()
        }
        .padding(5)
    }
}
