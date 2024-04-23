//
//  MainTabView.swift
//  SwiftUI-Airbnb-Clone
//
//  Created by enesozmus on 17.04.2024.
//

import SwiftUI

struct MainTabView: View {
    
    private let service: AuthService
    
    init(service: AuthService) {
        self.service = service
    }
    
    var body: some View {
        TabView {
            ExploreView()
                .tabItem { Label("Explore", systemImage: "magnifyingglass") }
            
            WishlistsView()
                .tabItem { Label("Wishlists", systemImage: "heart") }
            
            ProfileLoginView(service: service)
                .tabItem { Label("Profile", systemImage: "person.circle") }
        }
    }
}

#Preview {
    MainTabView(service: AuthService())
}
