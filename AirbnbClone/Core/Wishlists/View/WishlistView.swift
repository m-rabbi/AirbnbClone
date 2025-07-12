//
//  WishlistView.swift
//  AirbnbClone
//
//  Created by Md Rabbi on 7/11/25.
//

import SwiftUI

struct WishlistView: View {
    @State private var showLogin = false
    
    @ObservedObject var authMangager: AuthManager
    init(authManager: AuthManager) {
        self.authMangager = authManager
        
        
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                if authMangager.userSessionId == nil {
                    WishlistLoginView(showLogin: $showLogin)
                } else {
                    WishlistEmptyStateView()
                }
            }
            .padding()
            .navigationTitle("Wishlists")
            .sheet(isPresented: $showLogin) {
                LoginView(authManager: authMangager)
            }
        }
    }
}

#Preview {
    WishlistView(authManager: AuthManager(service: MockAuthService()))
}
