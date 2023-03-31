//
//  UserStorage.swift
//  MultiDemo
//
//  Created by Ceren Gazioglu Majoor on 31/03/2023.
//

import SwiftUI

class UserStorage: ObservableObject {
    @AppStorage("userName") var userNameData: Data?

    var userName: UserName {
        get {
            if let data = userNameData,
               let decoded = try? JSONDecoder().decode(UserName.self, from: data) {
                return decoded
            }
            return UserName(firstName: "", secondName: "")
        }
        set {
            if let encoded = try? JSONEncoder().encode(newValue) {
                userNameData = encoded
            }
        }
    }
}
