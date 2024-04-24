//
//  ContentViewModel.swift
//  SwiftUI-Airbnb-Clone
//
//  Created by enesozmus on 24.04.2024.
//

import Foundation
import Combine
import CoreLocation

@MainActor
class ContentViewModel: ObservableObject {
    @Published var isAuthenticated = false
    @Published var currentUser: User?
    @Published var currentLocation: CLLocationCoordinate2D?
    
    private var cancellables = Set<AnyCancellable>()
    private let authService: AuthService
    private let userService: UserService
    
    init(authService: AuthService, userService: UserService) {
        self.authService = authService
        self.userService = userService
        
        setupSubscribers()
    }
    
    private func setupSubscribers() {
        authService.$didAuthenticateUser.sink { [weak self] authenticated in
            self?.isAuthenticated = authenticated
            guard authenticated else { return }
            self?.fetchCurrentUser()
        }.store(in: &cancellables)
    }
    
    func fetchCurrentUser() {
        Task { self.currentUser = try await userService.fetchCurrentUser() }
    }
}
