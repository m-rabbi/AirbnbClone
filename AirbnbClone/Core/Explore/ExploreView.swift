//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by Md Rabbi on 7/10/25.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                SearchAndFilterBar()
    
                LazyVStack {
                    ForEach(0..<10) { listing in
                        NavigationLink(value: listing) {
                            ListingItemView()
                        }
                    }
                }
            }
            .navigationDestination(for: Int.self) { listing in
                Text("Listing detail view")
            }
        }
        .tint(.primary)
    }
}

#Preview {
    ExploreView()
}
