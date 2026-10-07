//
//  CardView.swift
//  Learning App
//
//  Created by CDatarET on 07/10/26.
//

import Foundation
import SwiftUI

struct CardView : Identifiable{
    let id = UUID()
    let level: String
    let name: String
    let content: String
    let lessons: String
    let logo: String
    let color: Color
}

let cards = [
    CardView(level: "BEGINNER", name: "Swift Fundamentals", content: "Variables, functions, and structures", lessons: "8", logo: "book.fill", color: .blue),
    CardView(level: "INTERMEDIATE", name: "Build with SwiftUI", content: "Views, modifiers, and layouts", lessons: "12", logo: "square.stack.3d.up.fill", color: .purple),
    CardView(level: "BEGINNER", name: "Design Essentials", content: "Create clear and intuitive interfaces", lessons: "6", logo: "paintbrush.pointed.fill", color: .orange),
    CardView(level: "PRACTICE", name: "App Projects", content: "Turn your learning into practice", lessons: "5", logo: "hammer.fill", color: .green)
]
