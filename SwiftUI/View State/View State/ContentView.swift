//
//  ContentView.swift
//  View State
//
//  Created by iOS SDP Mac94 on 26/10/26.
//

import SwiftUI

struct ContentView: View {
    @State var backgroundColor = Color.mint
    var body: some View {
        ChildView(backgroundColor: $backgroundColor)
        @State var groceries = ["Milk", "Bread", "Noodles", "Onions", "Garlic"]
        @State var locations = ["Trader Joe's", "Walmart", "Costco", "T&T", "Central Market"]
        
        backgroundColor
        .ignoresSafeArea()
        .overlay{
            VStack{
                Spacer()
                
                List{
                    Text("Groceries")
                        .font(.title)
                        .bold()
                    
                    ForEach(groceries, id: \.self) { item in
                        Text(item)
                    }
                    
                    Text("Locations")
                        .font(.title)
                        .bold()
                    
                    ForEach(locations, id: \.self) { item in
                        Text(item)
                    }
                }
                .padding()
            }
        }
    }
}

struct ChildView: View{
    @Binding var backgroundColor: Color
    var body: some View{
        
    }
}

struct Folder : Identifiable{
    let id = UUID()
    let name: String
    let icon: String
    let SubFolders: [Folder]?
}

struct Messages: View{
    let folders: [Folder]
    var body: some View{
        
    }
}

#Preview {
    ContentView()
}
