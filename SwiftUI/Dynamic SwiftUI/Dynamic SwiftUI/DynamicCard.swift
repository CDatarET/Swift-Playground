//
//  Dynamic.swift
//  Custom Modifiers
//
//  Created by CDatarET on 06/10/26.
//
import SwiftUI

struct DynamicCard: View{
    let event: CampusEvent
    
    var body: some View{
        VStack{
            Text(event.title)
            HStack{
                Image(systemName: "calendar")
                Text(event.date)
            }
            
            HStack{
                Image(systemName: "mappin.and.ellipse")
                Text(event.venue)
            }
        }
    }
}

#Preview {
    DynamicCard(event: CampusEvent(title: "E1", date: "date", venue: "venue"))
}
