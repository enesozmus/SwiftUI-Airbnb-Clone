//
//  DestinationSerachView.swift
//  SwiftUI-Airbnb-Clone
//
//  Created by enesozmus on 17.04.2024.
//

import SwiftUI

struct DestinationSerachView: View {
    @Binding var show: Bool
    @State private var destination = ""
    var body: some View {
        VStack {
            Button {
                withAnimation() {
                    show.toggle()
                }
            } label: {
                Image(systemName: "xmark.circle")
                    .imageScale(.large)
                    .foregroundStyle(.black)
            }
            
            // location selection view
            VStack(alignment: .leading) {
                Text("Where to?")
                    .font(.title2)
                    .fontWeight(.semibold)
                HStack {
                    Image(systemName: "magnifyingglass")
                        .imageScale(.small)
                    
                    TextField("Search destinations", text: $destination)
                        .font(.subheadline)
                        .onSubmit {
                            show.toggle()
                        }
                }
                .frame(height: 44)
                .padding(.horizontal)
                .overlay {
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(lineWidth: 1.0)
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
            // num guests view
            VStack {
                
            }
            
        }
    }
}

#Preview {
    DestinationSerachView(show: .constant(false))
}
