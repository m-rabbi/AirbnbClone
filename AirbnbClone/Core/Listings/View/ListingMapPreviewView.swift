import SwiftUI
import MapKit

struct ListingMapPreviewView: View {
    let listing: Listing

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            // Scrollable images
            ListingImageCarouselView(listing: listing)
                .frame(height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))

            // Location (city, state)
            HStack(spacing: 4) {
                Image(systemName: "mappin.and.ellipse")
                    .foregroundColor(.red)
                Text("\(listing.city), \(listing.state)")
                    .font(.subheadline)
                    .foregroundColor(.black)
            }

            // Rating and price
            HStack {
                // Rating
                Label(listing.formattedRating, systemImage: "star.fill")
                    .font(.subheadline)
                    .foregroundColor(.black)
                Spacer()
                // Price
                Text("$\(listing.pricePerNight) ")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                Text("/ night")
                    .font(.subheadline)
                    .foregroundColor(.black)
            }
        }
        .padding(12)
    }
} 
