//
//  AuthServiceProtocol.swift
//  AirbnbClone
//
//  Created by Md Rabbi on 7/12/25.
//

import Foundation

protocol AuthServiceProtocol {
    func login(withEmail email: String, password: String) async throws -> String?
    
    func createUser(withEmail email: String, password: String, fullname: String) async throws -> String?
    
    func signout()
}
