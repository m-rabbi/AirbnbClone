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
                LazyVStack(spacing: 32) {
                    ForEach(0..<10) { listing in
                        Rectangle()
                            .frame(height: 400)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    ExploreView()
}
