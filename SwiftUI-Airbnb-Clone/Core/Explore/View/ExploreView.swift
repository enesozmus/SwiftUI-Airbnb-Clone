//
//  ExploreView.swift
//  SwiftUI-Airbnb-Clone
//
//  Created by enesozmus on 16.04.2024.
//

import SwiftUI

struct ExploreView: View {
    
    @State private var showDestinationSearchView = false
    
    var body: some View {
        NavigationStack {
            
            if showDestinationSearchView {
                DestinationSerachView(show: $showDestinationSearchView)
            } else {
                ScrollView {
                    SearchAndFilterBar()
                        .onTapGesture {
                            withAnimation(.snappy) {
                                showDestinationSearchView.toggle()
                            }
                        }
                    LazyVStack(spacing: 32) {
                        ForEach(0 ... 10, id: \.self) { listing in
                            NavigationLink(value: listing) {
                                ListingItemView()
                                    .frame(height: 400)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                    }
                }
                .navigationDestination(for: Int.self) { listing in
                    ListingDetailView()
                        .navigationBarBackButtonHidden()
                    //Text("Listing detail view...")
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
