//
//  ListingMapView.swift
//  AirbnbClone
//
//  Created by Md Rabbi on 7/12/25.
//

import SwiftUI
import MapKit

struct ListingMapView: View {
    private let listings: [Listing]
    @State private var position: MapCameraPosition
    @State private var selectedListing: Listing?
    @State private var showingListingDetail = false
    @Environment(\.dismiss) private var dismiss
    
    init(listings: [Listing], coordinate: CLLocationCoordinate2D) {
        self.listings = listings
        self._position = State(initialValue: .region(MKCoordinateRegion.region(for: coordinate, span: 0.5)))
    }

    var body: some View {
        ZStack {
            Map(position: $position) {
                ForEach(listings) { listing in
                    Annotation(listing.title, coordinate: listing.coordinate) {
                        ListingMapAnnotationView(listing: listing)
                            .onTapGesture {
                                selectedListing = listing
                            }
                    }
                }
            }
            .ignoresSafeArea()
            
            // Close button
            VStack {
                HStack {
                    Button(action: {
                        dismiss()
                    }) {
                        Image(systemName: "chevron.left")
                            .foregroundStyle(.black)
                            .frame(width: 40, height: 40)
                            .background(
                                Circle()
                                    .fill(.ultraThinMaterial)
                                    .overlay(
                                        Circle()
                                            .stroke(Color.white.opacity(0.4), lineWidth: 1)
                                    )
                            )
                    }
                    .padding(.leading, 20)
                    .padding(.top, 48)
                    Spacer()
                }
                Spacer()
            }

            // Summary card at bottom
            if let listing = selectedListing {
                VStack {
                    Spacer()
                    VStack(spacing: 0) {
                        HStack {
                            Spacer()
                            Button(action: {
                                selectedListing = nil
                            }) {
                                Image(systemName: "xmark")
                                    .foregroundStyle(.black)
                                    .frame(width: 30, height: 30)
                                    .background(
                                        Circle()
                                            .fill(.ultraThinMaterial)
                                            .overlay(
                                                Circle()
                                                    .stroke(Color.white.opacity(0.4), lineWidth: 1)
                                            )
                                    )
                            }
                            .padding([.top, .trailing], 8)
                        }
                        ListingItemView(listing: listing)
                            .background(
                                RoundedRectangle(cornerRadius: 20, style: .continuous)
                                    .fill(.ultraThinMaterial)
                                    .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 5)
                            )
                            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                            .onTapGesture {
                                showingListingDetail = true
                            }
                            .padding(.horizontal, 16)
                            .transition(.move(edge: .bottom))
                    }
                } 
                .animation(.spring(), value: selectedListing)
            }
        }
        .sheet(isPresented: $showingListingDetail) {
            if let listing = selectedListing {
                ListingDetailView(listing: listing)
            }
        }
    }
}

// Custom annotation view for listings
struct ListingMapAnnotationView: View {
    let listing: Listing
    
    var body: some View {
        VStack(spacing: 0) {
            // Price bubble
            Text("$\(listing.pricePerNight)")
                .font(.caption)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .padding(.horizontal, 8)
                .padding(.vertical, 4)
                .background(Color.black)
                .clipShape(RoundedRectangle(cornerRadius: 8)) 
            
            // Map pin
            Image(systemName: "mappin.circle.fill")
                .font(.title)
                .foregroundColor(.red)
                .background(Color.white)
                .clipShape(Circle())
        }
        .padding(12) // Increase tap area
        .contentShape(Rectangle()) // Make the whole padded area tappable
    }
}

#Preview {
    ListingMapView(
        listings: DeveloperPreview.shared.listings,
        coordinate: DeveloperPreview.shared.listings.first!.coordinate
    )
}
