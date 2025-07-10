//
//  ListingItemView.swift
//  AirbnbClone
//
//  Created by Md Rabbi on 7/10/25.
//

import SwiftUI

struct ListingItemView: View {
    
    var images = [
        "listing-0",
        "listing-1",
        "listing-2",
        "listing-3"
    ]
    
    var body: some View {
        VStack(spacing: 8) {
            // images
            TabView {
                ForEach(images, id: \.self) { image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                }
            }
            .frame(height: 400)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .tabViewStyle(.page)
            
            
            // listing details
            HStack(alignment: .top) {
                // details
                VStack(alignment: .leading) {
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                    
                    Text("12 mi away")
                        .foregroundStyle(.secondary)
                    
                    Text("Nov 3 - 10")
                        .foregroundStyle(.secondary)
                    
                    
                    HStack(spacing: 4) {
                        Text("$553")
                            .fontWeight(.semibold)
                        
                        Text("night")
                        
                        
                    }
                }
                
                Spacer()
                
                // rating
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    
                    Text("4.86")
                }
            }
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    ListingItemView()
}
