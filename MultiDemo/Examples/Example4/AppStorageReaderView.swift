//
//  AppStorageReaderView.swift
//  MultiDemo
//
//  Created by Ceren Gazioglu Majoor on 31/03/2023.
//


import SwiftUI

struct AppStorageReaderView: View {
    @AppStorage("someAppText") private var editorText = "Demo AppStorageReader"
    var body: some View {
        Text(editorText)
    }
}

struct AppStorageReaderView_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageReaderView()
    }
}
