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
                    VStack(alignment: .leading, spacing: 32) {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Log in to view your wishlist")
                                .font(.headline)
                            
                            Text("You can create, view or edit your wishlist once you've logged in.")
                                .font(.footnote)
                            
                        }
                        
                        Button {
                            showLogin.toggle()
                        } label: {
                            Text("Log in")
                                .foregroundStyle(.white)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .frame(width: 405, height: 48)
                                .background(.pink.opacity(0.9))
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                        }
                        
                        Spacer()
                    }
                    
                } else {
                    Text("show wishlists here")
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
