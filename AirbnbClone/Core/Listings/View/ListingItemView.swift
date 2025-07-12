//
//  ListingItemView.swift
//  AirbnbClone
//
//  Created by Md Rabbi on 7/10/25.
//

import SwiftUI

struct ListingItemView: View {
    let listing: Listing
    
    var body: some View {
        VStack(spacing: 8) {
            // images
            ListingImageCarouselView(listing: listing)
                .frame(height: 400)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            
            // listing details
            HStack(alignment: .top) {
                // details
                VStack(alignment: .leading) {
                    Text("\(listing.city), \(listing.state)")
                        .fontWeight(.semibold)
                    
                    Text("12 mi away")
                        .foregroundStyle(.secondary)
                    
                    Text("Nov 3 - 10")
                        .foregroundStyle(.secondary)
                    
                    
                    HStack(spacing: 4) {
                        Text("$\(listing.pricePerNight)")
                            .fontWeight(.semibold)
                        
                        Text("night")
                        
                        
                    }
                }
                
                Spacer()
                
                // rating
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    
                    Text(listing.formattedRating)
                }
            }
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    ListingItemView(listing: DeveloperPreview.shared.listings[0])
}
