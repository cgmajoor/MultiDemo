//
//  DemoData.swift
//  MultiDemo
//
//  Created by Ceren Gazioglu Majoor on 30/03/2023.
//

import Foundation
import Combine

class DemoData : ObservableObject {
    @Published var userCount = 42
    @Published var currentUser = ""
    @Published var wifiEnabled: Bool = true
    
    init() {
        updateData()
    }
    
    func updateData() {
        print("userdata")
    }
}
