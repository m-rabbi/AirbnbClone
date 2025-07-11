//
//  DestinationSearchView.swift
//  AirbnbClone
//
//  Created by Md Rabbi on 7/11/25.
//

import SwiftUI

struct DestinationSearchView: View {
    @Binding var show: Bool
    @State private var destination = ""
    
    var body: some View {
        VStack {
            Button {
                withAnimation(.snappy) {
                    show.toggle()
                }
            } label: {
                Image(systemName: "xmark.circle")
                    .imageScale(.large)
                    .foregroundStyle(.black)
            }
            
            // destination input
            VStack(alignment: .leading) {
                Text("Where to?")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                HStack {
                    Image(systemName: "magnifyingglass")
                        .imageScale(.small)
                    
                    TextField("Search destinations", text: $destination)
                        .font(.subheadline)
                }
                .frame(height: 44)
                .padding(.horizontal)
                .overlay {
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(lineWidth: 1)
                        .foregroundStyle(Color(.systemGray4))
                }
            }
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
            
            // date selection view
            VStack {
                
            }
            
            // num of guests
            VStack {
                
            }
        }
    }
}

#Preview {
    DestinationSearchView(show: .constant(false))
}
