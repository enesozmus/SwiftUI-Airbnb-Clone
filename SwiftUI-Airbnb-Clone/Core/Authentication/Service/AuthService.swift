//
//  AuthService.swift
//  SwiftUI-Airbnb-Clone
//
//  Created by enesozmus on 23.04.2024.
//

import Foundation

class AuthService {
    
    @Published var didAuthenticateUser = false
    
    @MainActor
    func login(withEmail email: String, password: String) async throws {
        didAuthenticateUser = true
    }
    
    @MainActor
    func createUser(withEmail email: String, password: String, fullname: String) async throws {
        didAuthenticateUser = true
    }
    
    @MainActor
    func signout() {
        didAuthenticateUser = false
    }
}
