//
//  ExploreViewModel.swift
//  AirbnbClone
//
//  Created by Md Rabbi on 7/11/25.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listings: [Listing] = []
    @Published var searchLocation = ""
    private let service: ExploreService
    private var listingsCopy = [Listing]()
    
    init(service: ExploreService) {
        self.service = service
        
        Task { await fetchListings() }
    }
    
    func fetchListings() async {
        do {
            self.listings = try await self.service.fetchListings()
            self.listingsCopy = listings
        } catch {
            print("DEBUG: Failed to fetch listings: \(error.localizedDescription)")
        }
    }
    
    func updateListingsForLocation( ) {
        let filteredListings = listings.filter({
            $0.city.lowercased() == searchLocation.lowercased() ||
            $0.state.lowercased() == searchLocation .lowercased()
        })
        
        self.listings = filteredListings.isEmpty ? listingsCopy : filteredListings
    }
}
