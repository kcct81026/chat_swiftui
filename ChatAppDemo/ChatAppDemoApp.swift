//
//  ChatAppDemoApp.swift
//  ChatAppDemo
//
//  Created by Kcct on 04/12/2024.
//

import SwiftUI
import Firebase

@main
struct ChatAppDemoApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
