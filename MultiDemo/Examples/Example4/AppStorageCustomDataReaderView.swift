//
//  AppStorageCustomDataReaderView.swift
//  MultiDemo
//
//  Created by Ceren Gazioglu Majoor on 31/03/2023.
//

import SwiftUI

struct AppStorageCustomDataReaderView: View {
    @EnvironmentObject var userStorage: UserStorage

    var body: some View {
        Text("Your name is \(userStorage.userName.firstName) \(userStorage.userName.secondName)")
            .padding()
    }
}

struct AppStorageCustomDataReaderView_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageCustomDataReaderView()
    }
}
