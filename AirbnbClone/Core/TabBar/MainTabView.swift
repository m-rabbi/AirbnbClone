//
//  MainTabView.swift
//  AirbnbClone
//
//  Created by Md Rabbi on 7/11/25.
//

import SwiftUI

struct MainTabView: View {
    
    private let authManager: AuthManager
    init(authManager: AuthManager) {
        self.authManager = authManager
    }
    
    var body: some View {
        TabView {
            ExploreView()
                .tabItem { Label("Explore", systemImage: "magnifyingglass")}
            
            WishlistView(authManager: authManager)
                .tabItem { Label("Wishlists", systemImage: "heart")}

            ProfileView(authManager: authManager)
                .tabItem { Label("Profile", systemImage: "person")}

        }
        .tint(.pink)
    }
}

#Preview {
    MainTabView(authManager: AuthManager(service: MockAuthService()))
}
 
