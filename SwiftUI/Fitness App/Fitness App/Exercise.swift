//
//  Exercise.swift
//  Fitness App
//
//  Created by CDatarET on 06/10/26.
//

import Foundation
import SwiftUI

struct Exercise : Identifiable{
    let id = UUID()
    let time: String
    let event: String
    let type: String
    let duration: String
    let status: String
    let image: String
    let color: Color
}

let exercises = [
    Exercise(time: "7:00 AM", event: "Morning Yoga", type: "Flexibility", duration: "20 min", status: "COMPLETED", image: "figure.yoga", color: .purple),
    Exercise(time: "12:30 PM", event: "Core Training", type: "Strength", duration: "15 min", status: "UP NEXT", image: "figure.core.training", color: .orange),
    Exercise(time: "5:30 PM", event: "Evening Run", type: "Cardio", duration: "30 min", status: "Scheduled", image: "figure.run", color: .blue),
    Exercise(time: "7:00 PM", event: "Full Body Stretch", type: "Recovery", duration: "10 min", status: "Scheduled", image: "figure.cooldown", color: .mint)
]
