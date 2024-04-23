//
//  AuthError.swift
//  SwiftUI-Airbnb-Clone
//
//  Created by enesozmus on 23.04.2024.
//

import Foundation

enum AuthError: Error {
    case invalidEmail
    case invalidPassword
    case userNotFound
    case weakPassword
    case unknown
}
