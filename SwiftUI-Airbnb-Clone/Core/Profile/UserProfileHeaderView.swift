//
//  UserProfileHeaderView.swift
//  SwiftUI-Airbnb-Clone
//
//  Created by enesozmus on 24.04.2024.
//

import SwiftUI

struct UserProfileHeaderView: View {
    let user: User
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 27.5)
                .fill(Color.white)
                .frame(width: 300, height: 200, alignment: .center)
                .shadow(radius: 10)
            
            VStack(spacing: 12) {
                CircularProfileImageView(imageUrl: user.profileImageUrl,
                                         size: .xLarge)
                
                VStack {
                    Text(user.fullname)
                        .font(.headline)
                    
                    Text(user.accountType.description)
                        .font(.footnote)
                }
            }
        }
    }
}

#Preview {
    UserProfileHeaderView(user: User(accountType: AccountType.guest, fullname: "xxx", email: "xxx@g.com", profileImageUrl: "male-photo"))
}
