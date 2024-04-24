//
//  UserService.swift
//  SwiftUI-Airbnb-Clone
//
//  Created by enesozmus on 24.04.2024.
//

import Foundation

class UserService {
    func fetchCurrentUser() async throws -> User {
        return User(
            accountType: .guest,
            fullname: "enesozmus",
            email: "ensozmus@gmail.com",
            profileImageUrl: "male-photo"
        )
    }
}
