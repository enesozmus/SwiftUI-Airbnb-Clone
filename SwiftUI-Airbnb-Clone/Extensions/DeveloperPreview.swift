//
//  DeveloperPreview.swift
//  SwiftUI-Airbnb-Clone
//
//  Created by enesozmus on 22.04.2024.
//

import Foundation

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    var listings: [Listing] = [
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              ownerName: "Enes OZMUS",
              ownerImageUrl: "male-photo",
              numberOfBedrooms: 4,
              numberOfBathrooms: 3,
              numberOfGuests: 4,
              numberOfBeds: 4,
              pricePerNight: 567,
              latitude: 40.372499,
              longitude: 28.88333,
              imageURLs: ["emma-4", "emma-2", "emma-1"],
              address: "124 Main St",
              city: "Bursa",
              state: "Marmara",
              title: "...with sea view in Mudanya",
              rating: 4.96,
              features: [.selfChekIn, .superHost],
              amenities: [ .kitchen, .wifi, .alarmSystem, .balcony, .pool, .laundry, .tv],
              type: .villa
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              ownerName: "Yui Aragaki",
              ownerImageUrl: "user-1",
              numberOfBedrooms: 4,
              numberOfBathrooms: 3,
              numberOfGuests: 4,
              numberOfBeds: 4,
              pricePerNight: 567,
              latitude: 34.0549,
              longitude: -118.2426,
              imageURLs: ["listing-1", "listing-2", "listing-3", "listing-4"],
              address: "124 Main St",
              city: "Los Angeles",
              state: "California",
              title: "Beautiful Los Angeles home in Malibu",
              rating: 4.86,
              features: [.selfChekIn, .superHost],
              amenities: [ .kitchen, .wifi, .alarmSystem, .balcony, .laundry, .tv],
              type: .villa
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              ownerName: "Mirei Kiritani",
              ownerImageUrl: "user-2",
              numberOfBedrooms: 3,
              numberOfBathrooms: 2,
              numberOfGuests: 3,
              numberOfBeds: 3,
              pricePerNight: 450,
              latitude: 25.7602,
              longitude: -80.1959,
              imageURLs: ["property-2", "property-4", "property-1"],
              address: "124 Main St",
              city: "Miami",
              state: "Florida",
              title: "Miami Villa",
              rating: 4.96,
              features: [.selfChekIn, .superHost],
              amenities: [.wifi, .alarmSystem, .balcony, .laundry,],
              type: .townHouse
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              ownerName: "Aizawa IO",
              ownerImageUrl: "user-1",
              numberOfBedrooms: 2,
              numberOfBathrooms: 1,
              numberOfGuests: 1,
              numberOfBeds: 1,
              pricePerNight: 37,
              latitude: 35.69091,
              longitude: 139.70023,
              imageURLs: ["emma-4", "emma-2", "emma-1"],
              address: "124 SubWay",
              city: "新宿西口",
              state: "東京",
              title: "Apart",
              rating: 3.46,
              features: [.selfChekIn],
              amenities: [.alarmSystem],
              type: .apartment
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              ownerName: "Bob Johnson",
              ownerImageUrl: "user-3",
              numberOfBedrooms: 9,
              numberOfBathrooms: 2,
              numberOfGuests: 5,
              numberOfBeds: 5,
              pricePerNight: 700,
              latitude: 40.7128,
              longitude: -74.0060,
              imageURLs: ["listing-1", "listing-2", "listing-3", "listing-4"],
              address: "789 Broadway",
              city: "New York",
              state: "New York",
              title: "NYC Penthouse",
              rating: 4.95,
              features: [.selfChekIn, .superHost],
              amenities: [.pool, .wifi, .alarmSystem, .balcony, .laundry, .tv, .office],
              type: .house
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              ownerName: "Tanaka",
              ownerImageUrl: "user-4",
              numberOfBedrooms: 1,
              numberOfBathrooms: 0,
              numberOfGuests: 2,
              numberOfBeds: 2,
              pricePerNight: 307,
              latitude: 35.6597653,
              longitude: 139.7023844,
              imageURLs: ["emma-4", "emma-2", "emma-1"],
              address: "1209 Main St",
              city: "Shibuya",
              state: "Tokyo",
              title: "Shibuya House",
              rating: 4.12,
              features: [.selfChekIn, .superHost],
              amenities: [.kitchen, .laundry, .tv],
              type: .townHouse
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              ownerName: "Harry Styles",
              ownerImageUrl: "user-1",
              numberOfBedrooms: 0,
              numberOfBathrooms: 0,
              numberOfGuests: 1,
              numberOfBeds: 1,
              pricePerNight: 37,
              latitude: 35.69091,
              longitude: 139.70023,
              imageURLs: ["property-2", "property-4", "property-1"],
              address: "124 SubWay",
              city: "Shinjuku",
              state: "Tokyo",
              title: "Apart",
              rating: 3.46,
              features: [.selfChekIn],
              amenities: [.alarmSystem],
              type: .apartment
             ),
    ]
}

