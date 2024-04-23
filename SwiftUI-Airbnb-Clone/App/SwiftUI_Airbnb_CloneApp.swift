//
//  SwiftUI_Airbnb_CloneApp.swift
//  SwiftUI-Airbnb-Clone
//
//  Created by enesozmus on 16.04.2024.
//

import SwiftUI

@main
struct SwiftUI_Airbnb_CloneApp: App {
    
    let authService = AuthService()
    
    var body: some Scene {
        WindowGroup {
            ContentView(authService: authService)
        }
    }
}
