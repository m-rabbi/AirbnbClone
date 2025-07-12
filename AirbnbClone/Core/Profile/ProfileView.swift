//
//  ProfileView.swift
//  AirbnbClone
//
//  Created by Md Rabbi on 7/11/25.
//

import SwiftUI

struct ProfileView: View {
    @ObservedObject var authManager: AuthManager
    @State private var showLogin = false
    
    init(authManager: AuthManager) {
        self.authManager = authManager
    }
    
    var body: some View {
        VStack {
            // profile header
            if authManager.userSessionId == nil {
                ProfileLoginView(showLogin: $showLogin)
            } else {
                UserProfileHeaderView()
            }
            
            // profile options
            VStack(spacing: 24) {
                ProfileOptionRowView(imageName: "gear", title: "Settings")
                ProfileOptionRowView(imageName: "gear", title: "Accessibility")
                ProfileOptionRowView(imageName: "questionmark.circle", title: "Visit the help center")

            }
            .padding(.vertical)
           
            if authManager.userSessionId != nil { 
                Button {
                    authManager.signout()
                } label: {
                    Text("Log Out")
                        .underline()
                        .foregroundStyle(.black)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                }
                .frame(maxWidth: .infinity, alignment: .leading) 
            }
        }
        .padding()
        .sheet(isPresented: $showLogin) {
            LoginView(authManager: authManager) 
        }
    }
}

#Preview {
    ProfileView(authManager: AuthManager(service: MockAuthService()))
}
