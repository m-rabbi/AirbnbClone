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
                
                LazyVStack(spacing: 32) {
                    ForEach(0..<10) { listing in
                        ListingItemView()
                    }
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
