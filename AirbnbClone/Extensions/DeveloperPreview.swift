//
//  DeveloperPreview.swift
//  AirbnbClone
//
//  Created by Md Rabbi on 7/11/25.
//

import Foundation

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    static let allImages = [
        "listing-0",
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
        "listing-5",
        "listing-6"
    ]

    var listings: [Listing] = [
        Listing(
            id: UUID().uuidString,
            ownerUid: UUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 3,
            numberOfBathrooms: 2,
            numberOfGuests: 6,
            numberOfBeds: 4,
            pricePerNight: 200,
            latitude: 25.7617,
            longitude: -80.1918,
            imageURLs: Array(DeveloperPreview.allImages[0..<4]), // listing-0 to listing-3
            address: "123 Ocean Drive",
            city: "Miami",
            state: "FL",
            title: "Oceanfront Apartment",
            rating: 4.8,
            features: [.selfCheckIn, .superHost],
            amenities: [.pool, .kitchen, .wifi, .laundry],
            type: .apartment
        ),
        Listing(
            id: UUID().uuidString,
            ownerUid: UUID().uuidString,
            ownerName: "Alice Johnson",
            ownerImageUrl: "female-profile-photo",
            numberOfBedrooms: 5,
            numberOfBathrooms: 4,
            numberOfGuests: 10,
            numberOfBeds: 6,
            pricePerNight: 450,
            latitude: 34.0522,
            longitude: -118.2437,
            imageURLs: [DeveloperPreview.allImages[6], DeveloperPreview.allImages[2], DeveloperPreview.allImages[4], DeveloperPreview.allImages[1]], // listing-6, listing-2, listing-4, listing-1
            address: "456 Sunset Blvd",
            city: "Los Angeles",
            state: "CA",
            title: "Luxury Villa with Pool",
            rating: 4.9,
            features: [.selfCheckIn, .superHost],
            amenities: [.pool, .wifi, .tv, .alarmSystem],
            type: .villa
        ),
        Listing(
            id: UUID().uuidString,
            ownerUid: UUID().uuidString,
            ownerName: "Michael Brown",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 8,
            numberOfBeds: 5,
            pricePerNight: 320,
            latitude: 40.7128,
            longitude: -74.0060,
            imageURLs: [DeveloperPreview.allImages[3], DeveloperPreview.allImages[5], DeveloperPreview.allImages[0], DeveloperPreview.allImages[6]], // listing-3, listing-5, listing-0, listing-6
            address: "789 Broadway",
            city: "New York",
            state: "NY",
            title: "Cozy Townhouse",
            rating: 4.7,
            features: [.selfCheckIn, .superHost],
            amenities: [.kitchen, .wifi, .office, .balcony],
            type: .townHouse
        )
    ]
}
