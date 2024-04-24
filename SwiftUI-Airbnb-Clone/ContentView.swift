//
//  ContentView.swift
//  SwiftUI-Airbnb-Clone
//
//  Created by enesozmus on 16.04.2024.
//

import SwiftUI

struct ContentView: View {
    
    private let authService: AuthService
    private let userService: UserService
    
    @StateObject var viewModel: ContentViewModel
    
    init(authService: AuthService, userService: UserService) {
        self.authService = authService
        self.userService = userService
        
        self._viewModel = StateObject(wrappedValue: ContentViewModel(authService: authService, userService: userService))
    }
    
    var body: some View {
        MainTabView(service: authService)
            .environmentObject(viewModel)
    }
}

#Preview {
    ContentView(authService: AuthService(), userService: UserService())
}
