//
//  User.swift
//  SwiftUI-Airbnb-Clone
//
//  Created by enesozmus on 24.04.2024.
//

import Foundation

struct User: Identifiable, Codable {
    var id = NSUUID().uuidString
    var accountType: AccountType
    let fullname: String
    let email: String
    let profileImageUrl: String
}

enum AccountType: Int, Codable {
    case host
    case guest
    
    var description: String {
        switch self {
        case .host: return "Host"
        case .guest: return "Guest"
        }
    }
}
