//
//  ListingItemView.swift
//  SwiftUI-Airbnb-Clone
//
//  Created by enesozmus on 16.04.2024.
//

import SwiftUI

struct ListingItemView: View {
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4"
    ]
    var body: some View {
        VStack(spacing: 8) {
            // images
            ListingImageCarousalView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            // listing details
            HStack(alignment: .top) {
                // details
                VStack(alignment: .leading) {
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
                .foregroundStyle(.black)
                Spacer()
                // rating
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    Text("4,86")
                }
                .foregroundStyle(.black)
            }
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    ListingItemView()
}
