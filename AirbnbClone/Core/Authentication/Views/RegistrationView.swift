//
//  RegistrationView.swift
//  AirbnbClone
//
//  Created by Md Rabbi on 7/12/25.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    
    @Environment(\.dismiss) var dismiss
     
    var body: some View {
        VStack {
            Spacer()
            
            Image(.airbnbAppIcon)
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding()
            
            VStack {
                TextField("Enter your email...", text: $email)
                    .modifier(PrimaryTextFieldModifier())
                
                SecureField("Enter your password", text: $password)
                    .modifier(PrimaryTextFieldModifier())
                
                TextField("Enter your full name...", text: $fullname)
                    .modifier(PrimaryTextFieldModifier())
            }
                        
            Button {
                print("DEBUG: Create Account")
            } label: {
                Text("Create Account")
                    .modifier(PrimaryButtonModifier())
            }
            .padding(.vertical, 8)
            
            Spacer()
            
            Divider()
            
            Button {
                dismiss()
            } label: {
                HStack(spacing: 2) {
                    Text("Already have an account?")
                    
                    Text("Sign in")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
            }
            .padding(.vertical)

        }
    }
}

#Preview {
    RegistrationView()
}
