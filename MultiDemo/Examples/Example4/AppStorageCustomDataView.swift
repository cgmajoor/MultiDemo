//
//  AppStorageCustomDataView.swift
//  MultiDemo
//
//  Created by Ceren Gazioglu Majoor on 31/03/2023.
//

import SwiftUI


struct AppStorageCustomDataView: View {
    @EnvironmentObject var userStorage: UserStorage

    var body: some View {
        VStack {
            TextField("First Name", text: $userStorage.userName.firstName)
            TextField("Second Name", text: $userStorage.userName.secondName)
        }
    }
}

struct AppStorageCustomDataView_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageCustomDataView()
    }
}
