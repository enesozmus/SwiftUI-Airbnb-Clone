//
//  ProfileView.swift
//  SwiftUI-Airbnb-Clone
//
//  Created by enesozmus on 24.04.2024.
//

import SwiftUI

struct ProfileView: View {
    
    private let service: AuthService
    @EnvironmentObject var contentViewModel: ContentViewModel
    
    init(service: AuthService, user: User?) {
        self.service = service
    }
    
    var body: some View {
        VStack {
            if !contentViewModel.isAuthenticated {
                ProfileLoginView(service: service)
            } else if let user = contentViewModel.currentUser {
                UserProfileHeaderView(user: user)
                    .padding()
            }
            
            if contentViewModel.isAuthenticated {
                Button("Log Out") {
                    service.signout()
                }
            }
        }
        .padding()
    }
}

#Preview {
    ProfileView(service: AuthService(), user: User(accountType: AccountType.guest, fullname: "xxx", email: "xxx@g.com", profileImageUrl: "male-photo"))
}
