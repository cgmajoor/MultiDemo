//
//  AppStorageView.swift
//  MultiDemo
//
//  Created by Ceren Gazioglu Majoor on 31/03/2023.
//

import SwiftUI

struct AppStorageView: View {
    @AppStorage("someAppText") var editorText: String = "Demo AppStorage"

    var body: some View {
        TextEditor(text: $editorText)
            .padding(30)
            .font(.largeTitle)
    }
}

struct AppStorageView_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageView()
    }
}
