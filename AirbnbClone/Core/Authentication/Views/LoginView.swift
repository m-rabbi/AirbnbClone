//
//  LoginView.swift
//  AirbnbClone
//
//  Created by Md Rabbi on 7/12/25.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""

    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                Image(.airbnbAppIcon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .padding()
                
                VStack {
                    TextField("Enter your email...", text: $email)
                        .textInputAutocapitalization(.never)
                        .modifier(PrimaryTextFieldModifier())
                    
                    SecureField("Enter your password", text: $password)
                        .modifier(PrimaryTextFieldModifier())
                     
                }
                
                NavigationLink {
                    
                } label: {
                    Text("Forgot password?")
                        .font(.footnote)
                        .fontWeight(.medium)
                        .padding(.top)
                        .padding(.trailing, 28)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                
                Button {
                    print("DEBUG: Login")
                } label: {
                    Text("Login")
                        .modifier(PrimaryButtonModifier())
                }
                .padding(.vertical, 8)
                .disabled(!formIsValid)
                .opacity(formIsValid ? 1.0 : 0.7)
                
                Spacer()
                
                Divider()
                
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 2) {
                        Text("Don't have an account?")
                        
                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                }
                .padding(.vertical)

            }
        }
    }
}

// Mark: - AuthenticationFormProtocol

extension LoginView: AuthenticationFormProtocol {
    var formIsValid: Bool {
        return !email.isEmpty &&
        email.contains("@") &&
        email.contains(".") &&
        !password.isEmpty &&
        password.count >= 6 &&
        password.count <= 20
        
    }
}

#Preview {
    LoginView()
}
