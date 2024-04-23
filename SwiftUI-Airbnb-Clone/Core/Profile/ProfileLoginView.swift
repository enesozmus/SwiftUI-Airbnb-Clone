//
//  ProfileView.swift
//  SwiftUI-Airbnb-Clone
//
//  Created by enesozmus on 17.04.2024.
//

import SwiftUI

enum ActiveSheet: Identifiable {
    case first, second
    
    var id: Int {
        hashValue
    }
}

struct ProfileLoginView: View {
    
    @State var activeSheet: ActiveSheet?
    private let service: AuthService
    
    init(service: AuthService) {
        self.service = service
    }
    
    var body: some View {
        // ...
        VStack {
            // profile login view
            VStack(alignment: .leading, spacing: 32) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Profile")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    Text("Log in to start planning your next trip.")
                        .font(.subheadline)
                }
                Button {
                    activeSheet = .first
                } label: {
                    Text("Log in")
                        .foregroundColor(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: UIScreen.main.bounds.width - 48, height: 48)
                        .background(.pink)
                        .cornerRadius(8)
                }
                HStack {
                    Text("Don't have an account?")
                    
                    Button {
                        activeSheet = .second
                    } label: {
                        Text("Sign up")
                            .fontWeight(.semibold)
                            .underline()
                    }
                }
                .font(.caption)
            }
            .sheet(item: $activeSheet) { item in
                switch item {
                case .first:
                    LoginView(service: service)
                case .second:
                    RegistrationView()
                }
            }
            Spacer()
                .frame(height: 40)
            // ...
            // profile options
            VStack(spacing: 24) {
                ProfileOptionRowView(imageName: "gear", title: "Settings")
                
                ProfileOptionRowView(imageName: "gear", title: "Accessibility")
                
                ProfileOptionRowView(imageName: "questionmark.circle", title: "Visit the Help Center")
            }
            .padding(.vertical)
        }
        .padding()
    }
}

#Preview {
    ProfileLoginView(service: AuthService())
}
