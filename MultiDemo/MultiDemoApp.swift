//
//  MultiDemoApp.swift
//  MultiDemo
//
//  Created by Ceren Gazioglu Majoor on 30/03/2023.
//

import SwiftUI

@main
struct MultiDemoApp: App {

    @Environment(\.scenePhase) private var scenePhase

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .onChange(of: scenePhase, perform: { phase in
            switch phase {
            case .active:
                print("Active")
            case .inactive:
                print("Inactive")
            case .background:
                print("Background")
            default:
                print("Unknown scenephase")
            }
        })
    }
}
