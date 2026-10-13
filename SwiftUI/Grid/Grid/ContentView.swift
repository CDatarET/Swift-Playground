//
//  ContentView.swift
//  Grid
//
//  Created by CDatarET on 12/10/26.
//

import SwiftUI

struct circle: View{
    let color: Color
    let image: String
    var body: some View{
        Circle()
            .foregroundStyle(color)
            .overlay{
                Image(systemName: image)
                    .font(.largeTitle)
            }
    }
}

struct ContentView: View {
    let fixedRows = [GridItem(.fixed(80)), GridItem(.fixed(80))]
    
    let flexibleRows = [GridItem(.flexible()), GridItem(.flexible())]
    
    let columns = [GridItem(.fixed(80), spacing: 50),
                GridItem(.fixed(80), spacing: 50),
                GridItem(.fixed(80))]
    
    
    
    var body: some View {
        Grid{
            GridRow{
                circle(color: .gray, image: "delete.backward")
                circle(color: .gray, image: "c.circle")
                circle(color: .gray, image: "percent")
                circle(color: .orange, image: "divide")
            }
            
            GridRow{
                circle(color: .gray, image: "7.circle")
                circle(color: .gray, image: "8.circle")
                circle(color: .gray, image: "9.circle")
                circle(color: .orange, image: "multiply")
            }
            
            GridRow{
                circle(color: .gray, image: "4.circle")
                circle(color: .gray, image: "5.circle")
                circle(color: .gray, image: "6.circle")
                circle(color: .orange, image: "minus")
            }
            
            GridRow{
                circle(color: .gray, image: "1.circle")
                circle(color: .gray, image: "2.circle")
                circle(color: .gray, image: "3.circle")
                circle(color: .orange, image: "plus")
            }
            
            GridRow{
                circle(color: .gray, image: "plus.forwardslash.minus")
                circle(color: .gray, image: "0.circle")
                circle(color: .gray, image: "circle.fill")
                circle(color: .orange, image: "equal")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
