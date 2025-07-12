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
                        .padding()
                    
                    SecureField("Enter your password", text: $password)
                        .padding()
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
                        .foregroundStyle(.white)
                        .frame(width: 400, height: 40)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                }


                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
