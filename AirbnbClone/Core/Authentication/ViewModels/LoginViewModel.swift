//
//  LoginViewModel.swift
//  AirbnbClone
//
//  Created by Md Rabbi on 7/12/25.
//

import Foundation

class LoginViewModel: ObservableObject {
    
    private let service: MockAuthService
    
    init(service: MockAuthService) {
        self.service = service
    }
    
    func login(withemail email: String, password: String) async {
        do {
            try await service.login(withemail: email, password: password)
        } catch {
            print("DEBUG: Failed to login with error: \(error.localizedDescription)")
        }
    }
}
