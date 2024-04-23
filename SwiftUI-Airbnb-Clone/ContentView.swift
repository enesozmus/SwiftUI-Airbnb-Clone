//
//  ContentView.swift
//  SwiftUI-Airbnb-Clone
//
//  Created by enesozmus on 16.04.2024.
//

import SwiftUI

struct ContentView: View {
    
    private let authService: AuthService
    
    init(authService: AuthService) {
        self.authService = authService
    }
    
    var body: some View {
        MainTabView(service: authService)
    }
}

#Preview {
    ContentView(authService: AuthService())
}
