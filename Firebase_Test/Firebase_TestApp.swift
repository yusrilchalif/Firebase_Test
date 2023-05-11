//
//  Firebase_TestApp.swift
//  Firebase_Test
//
//  Created by Yusril on 26/04/23.
//

import SwiftUI
import Firebase

@main
struct Firebase_TestApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
