//
//  ContentView.swift
//  Fitness App
//
//  Created by CDatarET on 06/10/26.
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
