//
//  MainTabView.swift
//  AirbnbClone
//
//  Created by Md Rabbi on 7/11/25.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ExploreView()
                .tabItem { Label("Explore", systemImage: "magnifyingglass")}
            
            WishlistView()
                .tabItem { Label("Wishlists", systemImage: "heart")}

            ProfileView()
                .tabItem { Label("Profile", systemImage: "person")}

        }
        .tint(.pink)
    }
}

#Preview {
    MainTabView()
}
