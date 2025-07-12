//
//  WishlistLoginView.swift
//  AirbnbClone
//
//  Created by Md Rabbi on 7/12/25.
//

import SwiftUI

struct WishlistLoginView: View {
    @Binding var showLogin: Bool
    
    var body: some View {
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
    }
}

#Preview {
    WishlistLoginView(showLogin: .constant(false))
}
