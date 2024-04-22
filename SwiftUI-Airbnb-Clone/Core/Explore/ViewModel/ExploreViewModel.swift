//
//  ExploreViewModel.swift
//  SwiftUI-Airbnb-Clone
//
//  Created by enesozmus on 22.04.2024.
//

import Foundation

@MainActor
class ExploreViewModel: ObservableObject {
    @Published var listings = [Listing]()
    @Published var searchLocation = ""
    
    private let service: ExploreService
    private var listingsCopy = [Listing]()
    
    init(service: ExploreService) {
        self.service = service
        
        Task { await fetchListings() }
    }
    
    func fetchListings() async {
        do {
            let fetchedListings = try await service.fetchListings()
            DispatchQueue.main.async {
                self.listings = fetchedListings
                self.listingsCopy = fetchedListings
            }
        } catch {
            print("DEBUG: Failed to fetch listings with error: \(error.localizedDescription)")
        }
    }
}
