//
//  ExploreService.swift
//  SwiftUI-Airbnb-Clone
//
//  Created by enesozmus on 22.04.2024.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
