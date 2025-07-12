//
//  ProfileView.swift
//  AirbnbClone
//
//  Created by Md Rabbi on 7/11/25.
//

import SwiftUI

struct ProfileView: View {
    @State private var showLogin = false
    
    var body: some View {
        VStack {
            // profile header
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
            
            // profile options
            VStack(spacing: 24) {
                ProfileOptionRowView(imageName: "gear", title: "Settings")
                ProfileOptionRowView(imageName: "gear", title: "Accessibility")
                ProfileOptionRowView(imageName: "questionmark.circle", title: "Visit the help center")

            }
            .padding(.vertical)
        }
        .padding()
        .sheet(isPresented: $showLogin) {
            LoginView() 
        }
    }
}

#Preview {
    ProfileView()
}
