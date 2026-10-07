//
//  Destination.swift
//  Custom Modifiers
//
//  Created by CDatarET on 30/09/26.
//
import SwiftUI

struct Destination : View{
    var body: some View{
        ScrollView{
            VStack{
                DestinationCard(image: "Destination", tag: "Lake", destination: "Lake Retreat", location: "Colorado Springs", rating: 4.93, cost: 399.99)
                DestinationCard(image: "Destination2", tag: "Mountain", destination: "Mount Fuji", location: "Tokyo", rating: 4.9, cost: 1000.00)
                DestinationCard(image: "Destination3", tag: "City", destination: "Night Life", location: "Hong Kong", rating: 4.88, cost: 699.99)
            }
        }
    }
}

#Preview {
    Destination()
}
