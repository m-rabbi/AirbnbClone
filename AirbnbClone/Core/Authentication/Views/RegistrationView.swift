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
    
    @StateObject var viewModel = RegistrationViewModel(service: MockAuthService())
    
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
                    .textInputAutocapitalization(.never)
                    .modifier(PrimaryTextFieldModifier())
                
                SecureField("Enter your password", text: $password)
                    .modifier(PrimaryTextFieldModifier())
                
                TextField("Enter your full name...", text: $fullname)
                    .modifier(PrimaryTextFieldModifier())
            }
                        
            Button {
                Task { await viewModel.createUser(withEmail: email, password: password, fullname: fullname) }
            } label: {
                Text("Create Account")
                    .modifier(PrimaryButtonModifier())
            }
            .padding(.vertical, 8)
            .disabled(!formIsValid)
            .opacity(formIsValid ? 1.0 : 0.7)
            
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

extension RegistrationView: AuthenticationFormProtocol {
    var formIsValid: Bool {
        return !email.isEmpty &&
        email.contains("@") &&
        email.contains(".") &&
        !password.isEmpty &&
        password.count >= 6 &&
        password.count <= 20 &&
        !fullname.isEmpty
    }
}

#Preview {
    RegistrationView()
}
