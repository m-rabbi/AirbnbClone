//
//  Listing.swift
//  AirbnbClone
//
//  Created by Md Rabbi on 7/11/25.
//

import Foundation

struct Listing: Identifiable, Codable {
    let id: String
    let ownerUid: String
    let ownerName: String
    let ownerImageUrl: String
    let numberOfBedrooms: Int
    let numberOfBathrooms: Int
    let numberOfGuests: Int
    let numberOfBeds: Int
    var pricePerNight: Int
    let latitude: Double
    let longitude: Double
    let address: String
    let city: String
    let state: String
    let title: String
    var rating: Double
}

enum ListingFeatures: Int, Identifiable, Hashable, Codable {
    case selfCheckIn
    case superHost
    
    var id: Int { return self.rawValue }
}

enum ListingAmenities: Int, Identifiable, Hashable, Codable {
    case pool
    case kitchen
    case wifi
    case laundry
    case tv
    case alarmSystem
    case office
    case balcony
    
    var title: String {
        switch self {
        case .pool: return "Pool"
        case .kitchen: return "Kitchen"
        case .wifi: return "Wifi"
        case .laundry: return "Laundry"
        case .tv: return "Tv"
        case .alarmSystem: return "Alarm System"
        case .office: return "Office"
        case .balcony: return "Balcony"
        }
        
    }
    var imageName: String {
        switch self {
        case .pool: return "figure.pool.swim"
        case .kitchen: return "fork.knife"
        case .wifi: return "wifi"
        case .laundry: return "washer"
        case .tv: return "tv"
        case .alarmSystem: return "checkerboard.shield"
        case .office: return "pencil.and.ruler.fill"
        case .balcony: return "building"
        }
        
        
    }
    var id: Int { return self.rawValue }
    
}

