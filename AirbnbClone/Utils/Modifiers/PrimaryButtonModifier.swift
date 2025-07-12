//
//  PrimaryButtonModifier.swift
//  AirbnbClone
//
//  Created by Md Rabbi on 7/12/25.
//

import SwiftUI

struct PrimaryButtonModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .frame(width: 400, height: 44)
            .background(Color(.systemPink))
            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
    }
}
