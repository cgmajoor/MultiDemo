//
//  ContentView.swift
//  MultiDemo
//
//  Created by Ceren Gazioglu Majoor on 30/03/2023.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var demoData : DemoData = DemoData()

    let myHStack = HStack {
        Text("MyHStack")
        Image(systemName: "globe")
    }

    struct WifiImageView: View {
        @Binding var wifiEnabled : Bool
        var body: some View {
            Image(systemName: wifiEnabled ? "wifi" : "wifi.slash")
        }
    }

    var body: some View {
        VStack {
            Toggle(isOn: $demoData.wifiEnabled) {
                Text("Enable Wi-Fi")
            }
            WifiImageView(wifiEnabled: $demoData.wifiEnabled)
            TextField("Enter user name", text: $demoData.currentUser)
                .modifier(StandardTitle())
            Text("Hello \(demoData.currentUser)")
            Text("\(demoData.currentUser), you are user number \(demoData.userCount)")
            myHStack
            Text("sample")
                .padding()
                .border(.green)
            Label(
                title: {
                    Text("Label with Icon")
                        .font(.largeTitle)
                },
                icon: {
                    Circle()
                        .fill(.blue)
                        .frame(width: 25, height: 25)
                }
            )
            Button( action: buttonPressed ) {
                Image(systemName: "square.and.arrow.down")
            }
        }
    }

    func buttonPressed() {
        print("Button pressed")
    }
}

struct StandardTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .background(Color.white)
            .border(Color.gray, width: 0.2)
            .shadow(color: Color.black, radius: 5, x: 0, y: 5)
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
