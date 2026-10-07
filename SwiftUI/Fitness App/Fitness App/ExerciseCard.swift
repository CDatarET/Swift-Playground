//
//  SwiftUIView.swift
//  Fitness App
//
//  Created by CDatarET on 06/10/26.
//

import SwiftUI

struct ExerciseCard : View {
    let exercise: Exercise
    
    var body: some View {
        HStack{
            HStack{
                Capsule()
                    .frame(width: 10, height: 70)
                Image(systemName: exercise.image)
                    .font(.largeTitle)
            }
            .foregroundStyle(exercise.color)
            
            VStack{
                Text(exercise.time)
                Text(exercise.event)
                Text(exercise.type + " · " + exercise.duration)
            }
            
            Spacer()
            
            HStack{
                if(exercise.status == "COMPLETED"){
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundStyle(.green)
                    Text(exercise.status)
                        .foregroundStyle(.green)
                }
                else{
                    Text(exercise.status)
                        .foregroundStyle(exercise.color)
                }
                
            }
            
            Image(systemName: "chevron.right")
        }
        .padding()
    }
}

#Preview {
    ExerciseCard(exercise: Exercise(time: "7:00 AM", event: "Morning Yoga", type: "Flexibility", duration: "20 min", status: "COMPLETED", image: "figure.yoga", color: .purple))
}
