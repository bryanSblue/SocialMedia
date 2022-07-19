//
//  SocialmediaApp.swift
//  Socialmedia
//
//  Created by MAC on 09/07/22.
//

import SwiftUI
import Firebase

@main
struct SocialmediaApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            PostsList()
        }
    }
}

