//
//  MockAuthService.swift
//  AirbnbClone
//
//  Created by Md Rabbi on 7/12/25.
//

import Foundation

struct MockAuthService {
    
    func login(withemail email: String, password: String) async throws -> String? {
        return UUID().uuidString
    }
    
    func createUser(withemail email: String, password: String, fullname: String) -> String? {
        return UUID().uuidString
    }
    
    func signout() {
        
    }
}
