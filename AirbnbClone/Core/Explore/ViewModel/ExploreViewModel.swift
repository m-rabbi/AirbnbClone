//
//  ExploreViewModel.swift
//  AirbnbClone
//
//  Created by Md Rabbi on 7/11/25.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listings: [Listing] = []
    private let service: ExploreService
    
    init(service: ExploreService) {
        self.service = service
        
        Task { await fetchListings() }
    }
    
    func fetchListings() async {
        do {
            self.listings = try await self.service.fetchListings()
        } catch {
            print("DEBUG: Failed to fetch listings: \(error.localizedDescription)")
        }
    }
}
