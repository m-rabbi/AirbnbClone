//
//  MockAuthService.swift
//  AirbnbClone
//
//  Created by Md Rabbi on 7/12/25.
//

import Foundation

struct MockAuthService: AuthServiceProtocol {
    
    func login(withEmail email: String, password: String) async throws -> String? {
        return UUID().uuidString
    }
    
    func createUser(withEmail email: String, password: String, fullname: String) async throws -> String? {
        return UUID().uuidString
    }
    
    func signout() {
        
    }
}
