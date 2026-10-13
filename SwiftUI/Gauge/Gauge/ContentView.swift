//
//  ContentView.swift
//  Gauge
//
//  Created by CDatarET on 13/10/26.
//

import SwiftUI

struct GaugeGradient: View{
    var currentSteps = 400.0
    var minimumSteps = 0.0
    var maximumSteps = 1000.0
    let rowHeight: CGFloat = 80
    
    var gradient: Gradient = Gradient(colors: [.red, .orange, .yellow, .green])
    var body: some View{
        VStack(spacing: 0){
            HStack{
                Text("Gauge Style")
                    .font(.headline)
                    .frame(maxWidth: .infinity,
                           alignment: .leading)
                
                Text("Visual")
                    .font(.headline)
                    .frame(maxWidth: .infinity,
                           alignment: .leading)
            }
            .padding()
            .background(Color.gray.opacity(0.1))
            
            Divider()
            
            HStack(alignment: .center){
                Text(".linearCapacity")
                    .font(.system(.body, design:
                            .monospaced))
                    .foregroundColor(.indigo)
                    .frame(maxWidth: .infinity,
                           alignment: .leading)
                
                Gauge(value: currentSteps, in: 1...1000){
                    Text("Steps")
                }
                .gaugeStyle(.linearCapacity)
                .tint(gradient)
                .frame(maxWidth: .infinity,
                       alignment: .leading)
                    
            }
            .frame(height: rowHeight)
            .padding(.horizontal)
            
            HStack(alignment: .center){
                Text(".accessoryLinear")
                    .font(.system(.body, design:
                            .monospaced))
                    .foregroundColor(.indigo)
                    .frame(maxWidth: .infinity,
                           alignment: .leading)
                
                Gauge(value: currentSteps, in: 1...1000){
                    
                }
                .gaugeStyle(.accessoryLinear)
                .tint(gradient)
                .frame(maxWidth: .infinity,
                       alignment: .leading)
                    
            }
            .frame(height: rowHeight)
            .padding(.horizontal)
            
            HStack(alignment: .center){
                Text(".accessoryLinearCapacity")
                    .font(.system(.body, design:
                            .monospaced))
                    .foregroundColor(.indigo)
                    .frame(maxWidth: .infinity,
                           alignment: .leading)
                
                Gauge(value: currentSteps, in: 1...1000){
                    
                }
                    .gaugeStyle(.accessoryLinearCapacity)
                    .tint(gradient)
                    .frame(maxWidth: .infinity,
                           alignment: .leading)
            }
            .frame(height: rowHeight)
            .padding(.horizontal)
            
            HStack(alignment: .center){
                Text(".accessoryCircular")
                    .font(.system(.body, design:
                            .monospaced))
                    .foregroundColor(.indigo)
                    .frame(maxWidth: .infinity,
                           alignment: .leading)
                
                Gauge(value: currentSteps, in: 1...1000){
                    
                }
                .gaugeStyle(.accessoryCircular)
                .tint(gradient)
                .frame(maxWidth: .infinity,
                       alignment: .leading)
                    
            }
            .frame(height: rowHeight)
            .padding(.horizontal)
            
            HStack(alignment: .center){
                Text(".accessoryCircularCapacity")
                    .font(.system(.body, design:
                            .monospaced))
                    .foregroundColor(.indigo)
                    .frame(maxWidth: .infinity,
                           alignment: .leading)
                
                Gauge(value: currentSteps, in: 1...1000){
                    
                }
                .gaugeStyle(.accessoryCircularCapacity)
                .tint(gradient)
                .frame(maxWidth: .infinity,
                       alignment: .leading)
                    
            }
            .frame(height: rowHeight)
            .padding(.horizontal)
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    GaugeGradient()
}
