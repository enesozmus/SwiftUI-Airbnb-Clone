//
//  RegistrationViewModel.swift
//  SwiftUI-Airbnb-Clone
//
//  Created by enesozmus on 23.04.2024.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    private let service: AuthService
    
    init(service: AuthService) {
        self.service = service
    }
    
    func createUser(withEmail email: String, password: String, fullname: String) async {
        do {
            try await service.createUser(withEmail: email, password: password, fullname: fullname)
        } catch {
            print("DEBUG: Failed to create user with error: \(error.localizedDescription)")
        }
    }
}
