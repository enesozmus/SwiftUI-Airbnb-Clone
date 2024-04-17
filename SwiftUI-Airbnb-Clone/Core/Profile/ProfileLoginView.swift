//
//  ProfileView.swift
//  SwiftUI-Airbnb-Clone
//
//  Created by enesozmus on 17.04.2024.
//

import SwiftUI

struct ProfileLoginView: View {
    var body: some View {
        // ...
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
                print("Log in")
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
                
                Text("Sign up")
                    .fontWeight(.semibold)
                    .underline()
            }
            .font(.caption)
        }
        
        // ...
        // profile options
        VStack(spacing: 24) {
            ProfileOptionRowView(imageName: "gear", title: "Settings")
            
            ProfileOptionRowView(imageName: "gear", title: "Accessibility")
            
            ProfileOptionRowView(imageName: "questionmark.circle", title: "Visit the Help Center")
        }
        .padding(.vertical)
    }
}

#Preview {
    ProfileLoginView()
}
