//
//  ExploreViewModel.swift
//  AirbnbClone
//
//  Created by Md Rabbi on 7/11/25.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listings: [Listing] = []
    
    init() {
        
    }
    
    func fetchListings() async {
         
    }
}
