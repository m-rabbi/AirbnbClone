//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by Md Rabbi on 7/10/25.
//

import SwiftUI

struct ExploreView: View {
    @State private var showDestinationSearchView = false
    @State var viewModel = ExploreViewModel(service: ExploreService())
    
    var body: some View {
        NavigationStack {
            if showDestinationSearchView {
                DestinationSearchView(show: $showDestinationSearchView)
            } else {
                ScrollView {
                    SearchAndFilterBar()
                        .onTapGesture {
                            withAnimation (.snappy) {
                                showDestinationSearchView.toggle()
                            }
                        }
                    
                    LazyVStack {
                        ForEach(viewModel.listings) { listing in
                            NavigationLink(value: listing) {
                                ListingItemView(listing: listing)
                            }
                        }
                    }
                }
                .navigationDestination(for: Listing.self) { listing in
                    ListingDetailView(listing: listing)
                        .navigationBarHidden(true)
                }
            }
            
            
        }
        .tint(.primary)
    }
}

#Preview {
    ExploreView()
}
