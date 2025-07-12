//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by Md Rabbi on 7/10/25.
//

import SwiftUI

struct ExploreView: View {
    @State private var showDestinationSearchView = false
    @State private var showMapView = false // Add state for map sheet
    @State var viewModel = ExploreViewModel(service: ExploreService())
    
    var body: some View {
        NavigationStack {
            if showDestinationSearchView {
                DestinationSearchView(show: $showDestinationSearchView, viewModel: viewModel)
            } else {
                ZStack {
                    ScrollView {
                        SearchAndFilterBar(location: $viewModel.searchLocation)
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
                    // Floating Map Button
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            Button(action: {
                                showMapView = true
                            }) {
                                Image(systemName: "map")
                                    .font(.system(size: 24, weight: .bold))
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(Color.pink)
                                    .clipShape(Circle())
                                    .shadow(radius: 8)
                            }
                            .padding(.trailing, 24)
                            .padding(.bottom, 32)
                        }
                    }
                }
                .sheet(isPresented: $showMapView) {
                    if let first = viewModel.listings.first {
                        ListingMapView(listings: viewModel.listings, coordinate: first.coordinate)
                    } else {
                        Text("No listings to show on map.")
                            .font(.title2)
                            .padding()
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
