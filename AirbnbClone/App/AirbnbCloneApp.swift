//
//  AirbnbCloneApp.swift
//  AirbnbClone
//
//  Created by Md Rabbi on 7/10/25.
//

import SwiftUI

@main
struct AirbnbCloneApp: App {
    let authManager = AuthManager(service: MockAuthService())
    
    var body: some Scene {
        WindowGroup {
            ContentView(authManager: authManager) 
        }
    }
}
