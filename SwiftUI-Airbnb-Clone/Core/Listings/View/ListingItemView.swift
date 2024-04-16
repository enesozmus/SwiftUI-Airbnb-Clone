//
//  ListingItemView.swift
//  SwiftUI-Airbnb-Clone
//
//  Created by enesozmus on 16.04.2024.
//

import SwiftUI

struct ListingItemView: View {
    var body: some View {
        VStack(spacing: 8) {
            // images
            //Rectangle()
            TabView {
                ForEach(0 ... 3, id: \.self) { image in
                    Rectangle()
                }
            }
            .frame(width: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .tabViewStyle(.page)
            // listing details
            HStack(alignment: .top) {
                // details
                VStack {
                    Text("Kaş, Antalya")
                        .fontWeight(.semibold)
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    HStack(spacing: 4) {
                        Text("$567")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                }
                
                Spacer()
                
                // rating
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    Text("4,86")
                }
            }
            .background(.red)
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    ListingItemView()
}
