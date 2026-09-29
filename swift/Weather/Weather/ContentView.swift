//
//  ContentView.swift
//  Weather
//
//  Created by iOS SDP Mac94 on 29/09/26.
//

import SwiftUI

struct ContentView: View{
    var body: some View{
        HStack{
            Text("Weekly Weather")
                .font(.largeTitle)
        }
        
        HStack{
            VStack{
                Text("Mon")
                Image(systemName: "cloud.rain.fill")
                Text("Rainy")
                Text("Low 25")
                Text("High 30")
            }
            .padding(5)
            .border(.black)
            
            VStack{
                VStack{
                    
                }
                Text("Tue")
                Image(systemName: "sun.max.fill")
                Text("Sunny")
                Text("Low 29")
                Text("High 35")
            }
            .padding(5)
            .border(.black)
            
            VStack{
                Text("Wed")
                Image(systemName: "wind")
                Text("Windy")
                Text("Low 20")
                Text("High 25")
            }
            .padding(5)
            .border(.black)
        }
        
        HStack{
            VStack{
                Text("Thurs")
                Image(systemName: "wind")
                Text("Windy")
                Text("Low 20")
                Text("High 25")
            }
            .padding(5)
            .border(.black)
            
            VStack{
                VStack{
                    
                }
                Text("Fri")
                Image(systemName: "cloud.rain.fill")
                Text("Rainy")
                Text("Low 29")
                Text("High 35")
            }
            .padding(5)
            .border(.black)
            
            VStack{
                Text("Sat")
                Image(systemName: "cloud.rain.fill")
                Text("Rainy")
                Text("Low 25")
                Text("High 30")
            }
            .padding(5)
            .border(.black)
        }
        
        VStack{
            Text("Sun")
            Image(systemName: "cloud.rain.fill")
            Text("Rainy")
            Text("Low 25")
            Text("High 30")
        }
        .padding(5)
        .border(.black)
    }
}

#Preview {
    ContentView()
}
