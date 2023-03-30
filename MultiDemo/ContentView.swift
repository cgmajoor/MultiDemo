//
//  ContentView.swift
//  MultiDemo
//
//  Created by Ceren Gazioglu Majoor on 30/03/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var rotation: Double = 0

    var body: some View {
        VStack {
            Text("Starting second exercise")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .rotationEffect(.degrees(rotation))
                .animation(.easeOut(duration: 5), value: rotation)
            Slider(value: $rotation, in: 0...360, step: 0.1)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 11")
                .previewDisplayName("iPhone 11")
            ContentView()
                .previewDevice("iPhone SE (2nd generation)")
                .previewDisplayName("iPhone SE")
                .environment(\.colorScheme, .dark)
        }
    }
}
