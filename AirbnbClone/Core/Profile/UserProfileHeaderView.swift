//
//  UserProfileHeaderView.swift
//  AirbnbClone
//
//  Created by Md Rabbi on 7/12/25.
//

import SwiftUI

struct UserProfileHeaderView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 28)
                .fill(.white)
                .frame(width: 350, height: 250)
                .shadow(radius: 10)
            
            VStack(spacing: 12) {
                CircularProfileImageView(size: .large)
                
                VStack {
                    Text("John Doe")
                        .font(.headline)
                    
                    Text("Guest")
                        .font(.footnote)
                }
            }
        }
    }
}

#Preview {
    UserProfileHeaderView()
}
