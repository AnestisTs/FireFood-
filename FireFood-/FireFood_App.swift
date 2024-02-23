//
//  FireFood_App.swift
//  FireFood-
//
//  Created by Anestis Tsolakidis on 23.02.24.
//


import SwiftUI
import Firebase

@main
struct FireFood_App: App {
    
    init() {
        FirebaseConfiguration.shared.setLoggerLevel(.min)
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
