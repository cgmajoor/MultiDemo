//
//  ContentView.swift
//  MultiDemo
//
//  Created by Ceren Gazioglu Majoor on 30/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack() {

            NavigationLink(destination: { FirstExamplesView() }, label: { Text("Example 1") })
                .padding()
            NavigationLink(destination: { SecondExampleView() }, label: { Text("Example 2") })
                .padding()
            NavigationLink(destination: { ThirdExampleView() }, label: { Text("Example 3") })
                .padding()
            NavigationLink(destination: { FourthExampleView() }, label: { Text("Example 4") })
                .padding()
                .navigationTitle("SwiftUI Demos")
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
