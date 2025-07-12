//
//  RegistrationViewModel.swift
//  AirbnbClone
//
//  Created by Md Rabbi on 7/12/25.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    private let service: MockAuthService
    
    init(service: MockAuthService) {
        self.service = service
    }
    
    func createUser(withemail email: String, password: String, fullname: String) async {
        do {
            try await service.createUser(withemail: email, password: password, fullname: fullname)
        } catch {
            print("DEBUG: Failed to create user with error: \(error.localizedDescription)")
        }
    }
}
