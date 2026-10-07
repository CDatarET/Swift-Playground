//
//  ContentView.swift
//  Fitness App
//
//  Created by iOS SDP Mac94 on 06/10/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            LazyVStack(spacing: 16){
                ForEach(exercises) { exercise in
                    ExerciseCard(exercise: exercise)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
