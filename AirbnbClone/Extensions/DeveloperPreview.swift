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
        "listing-6",
        "listing-7",
        "listing-8",
        "listing-9",
        "listing-10",
        "listing-11"
    ]

    var listings: [Listing] = [
        // Miami listings
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
            ownerName: "Laura Green",
            ownerImageUrl: "female-profile-photo",
            numberOfBedrooms: 2,
            numberOfBathrooms: 1,
            numberOfGuests: 4,
            numberOfBeds: 2,
            pricePerNight: 150,
            latitude: 25.7800, // moved even further north
            longitude: -80.2100, // moved even further west
            imageURLs: [DeveloperPreview.allImages[4], DeveloperPreview.allImages[5]],
            address: "456 Biscayne Blvd",
            city: "Miami",
            state: "FL",
            title: "Cozy Downtown Condo",
            rating: 4.5,
            features: [.selfCheckIn],
            amenities: [.kitchen, .wifi],
            type: .house
        ),
        // Los Angeles listings
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
            imageURLs: [DeveloperPreview.allImages[6], DeveloperPreview.allImages[2], DeveloperPreview.allImages[4], DeveloperPreview.allImages[1]],
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
            ownerName: "Mark Thompson",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 3,
            numberOfBathrooms: 2,
            numberOfGuests: 5,
            numberOfBeds: 3,
            pricePerNight: 280,
            latitude: 34.0689,
            longitude: -118.4452,
            imageURLs: [DeveloperPreview.allImages[7], DeveloperPreview.allImages[8]],
            address: "789 Hollywood Blvd",
            city: "Los Angeles",
            state: "CA",
            title: "Charming Bungalow",
            rating: 4.6,
            features: [.superHost],
            amenities: [.wifi, .kitchen],
            type: .house
        ),
        // New York listings
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
            imageURLs: [DeveloperPreview.allImages[3], DeveloperPreview.allImages[5], DeveloperPreview.allImages[0], DeveloperPreview.allImages[6]],
            address: "789 Broadway",
            city: "New York",
            state: "NY",
            title: "Cozy Townhouse",
            rating: 4.7,
            features: [.selfCheckIn, .superHost],
            amenities: [.kitchen, .wifi, .office, .balcony],
            type: .townHouse
        ),
        Listing(
            id: UUID().uuidString,
            ownerUid: UUID().uuidString,
            ownerName: "Emma Wilson",
            ownerImageUrl: "female-profile-photo",
            numberOfBedrooms: 1,
            numberOfBathrooms: 1,
            numberOfGuests: 2,
            numberOfBeds: 1,
            pricePerNight: 180,
            latitude: 40.730610,
            longitude: -73.935242,
            imageURLs: [DeveloperPreview.allImages[9]],
            address: "101 East Village",
            city: "New York",
            state: "NY",
            title: "Modern Studio Apartment",
            rating: 4.4,
            features: [],
            amenities: [.wifi, .kitchen],
            type: .apartment
        ),
        // Chicago
        Listing(
            id: UUID().uuidString,
            ownerUid: UUID().uuidString,
            ownerName: "Sofia Martinez",
            ownerImageUrl: "female-profile-photo",
            numberOfBedrooms: 3,
            numberOfBathrooms: 2,
            numberOfGuests: 7,
            numberOfBeds: 4,
            pricePerNight: 250,
            latitude: 41.8781,
            longitude: -87.6298,
            imageURLs: [DeveloperPreview.allImages[1], DeveloperPreview.allImages[3]],
            address: "123 Lakeshore Dr",
            city: "Chicago",
            state: "IL",
            title: "Spacious Loft Near Lake Michigan",
            rating: 4.6,
            features: [.selfCheckIn],
            amenities: [.wifi, .kitchen, .laundry],
            type: .apartment
        ),
        // Houston
        Listing(
            id: UUID().uuidString,
            ownerUid: UUID().uuidString,
            ownerName: "Carlos Ramirez",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 9,
            numberOfBeds: 5,
            pricePerNight: 300,
            latitude: 29.7604,
            longitude: -95.3698,
            imageURLs: [DeveloperPreview.allImages[2], DeveloperPreview.allImages[7]],
            address: "789 Bayou Rd",
            city: "Houston",
            state: "TX",
            title: "Modern Home with Pool",
            rating: 4.8,
            features: [.superHost],
            amenities: [.pool, .wifi],
            type: .house
        ),
        // Denver
        Listing(
            id: UUID().uuidString,
            ownerUid: UUID().uuidString,
            ownerName: "Aisha Khan",
            ownerImageUrl: "female-profile-photo",
            numberOfBedrooms: 2,
            numberOfBathrooms: 1,
            numberOfGuests: 4,
            numberOfBeds: 2,
            pricePerNight: 150,
            latitude: 39.7392,
            longitude: -104.9903,
            imageURLs: [DeveloperPreview.allImages[5], DeveloperPreview.allImages[8]],
            address: "456 Mountain View",
            city: "Denver",
            state: "CO",
            title: "Cozy Cabin Retreat",
            rating: 4.3,
            features: [],
            amenities: [.kitchen, .wifi],
            type: .apartment
        )
    ]
}
