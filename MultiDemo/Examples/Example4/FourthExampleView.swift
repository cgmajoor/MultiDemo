//
//  FourthExampleView.swift
//  MultiDemo
//
//  Created by Ceren Gazioglu Majoor on 31/03/2023.
//

import SwiftUI

struct FourthExampleView: View {

    var body: some View {
        TabView {
            SceneStorageView()
                .tabItem {
                    Image(systemName: "circle.fill")
                    Text("SceneStorage")
                }
            AppStorageView()
                .tabItem {
                    Image(systemName: "square.fill")
                    Text("AppStorage")
                }
            AppStorageReaderView()
                .tabItem {
                    Image(systemName: "square.fill")
                    Text("AppStorageReader")
                }
        }
    }
}

struct FourthExampleView_Previews: PreviewProvider {
    static var previews: some View {
        FourthExampleView()
    }
}
