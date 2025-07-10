//
//  ListingImageCarouselView.swift
//  AirbnbClone
//
//  Created by Md Rabbi on 7/10/25.
//

import SwiftUI

struct ListingImageCarouselView: View {
    var images = [
        "listing-0",
        "listing-1",
        "listing-2",
        "listing-3"
    ]
    
    var body: some View {
        TabView {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView()
}
