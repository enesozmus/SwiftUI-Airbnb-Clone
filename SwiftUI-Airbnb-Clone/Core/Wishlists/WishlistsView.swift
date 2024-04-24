//
//  WishlistsView.swift
//  SwiftUI-Airbnb-Clone
//
//  Created by enesozmus on 17.04.2024.
//

import SwiftUI

struct WishlistsView: View {
    @State private var showLogin = false
    
    @EnvironmentObject var contentViewModel: ContentViewModel
    
    private let service: AuthService
    
    init(service: AuthService) {
        self.service = service
    }
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 32) {
                
                if !contentViewModel.isAuthenticated {
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Log in to view your wishlists")
                            .font(.headline)
                        Text("You can create, view or edit wishlists once you have logged in")
                            .font(.footnote)
                    }
                    
                    Button {
                        print("log in")
                    } label: {
                        Text("Log in")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 360, height: 48)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                    
                    Spacer()
                } else if let user = contentViewModel.currentUser {
                    Text("Wishlists Empty")
                }   
            }
            .sheet(isPresented: $showLogin, content: {
                LoginView(service: service)
            })
            .padding()
            .navigationTitle("Wishlists")
        }
    }
}

#Preview {
    WishlistsView(service: AuthService())
}
