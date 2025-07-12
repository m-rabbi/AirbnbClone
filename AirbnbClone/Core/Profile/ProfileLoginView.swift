//
//  ProfileLoginView.swift
//  AirbnbClone
//
//  Created by Md Rabbi on 7/12/25.
//

import SwiftUI

struct ProfileLoginView: View {
    @Binding var showLogin: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 18) {
            VStack(alignment: .leading, spacing: 2) {
                Text("Profile")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Text("Log in to start planning your next trip")
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
            
            HStack(spacing: 2) {
                Text("Don't have an account?")
                
                Text("Sign up")
                    .fontWeight(.semibold)
                    .underline()
            }
            .font(.footnote)
            
        }
    }
}

#Preview {
    ProfileLoginView(showLogin: .constant(false))
}
