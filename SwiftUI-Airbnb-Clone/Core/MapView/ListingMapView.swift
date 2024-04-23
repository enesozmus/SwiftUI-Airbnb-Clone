//
//  ListingMapView.swift
//  SwiftUI-Airbnb-Clone
//
//  Created by enesozmus on 23.04.2024.
//

import MapKit
import SwiftUI

struct ListingMapView: View {
    
    private let listings: [Listing]
    
    @State private var camaeraPosition: MapCameraPosition
    @State private var selectedListing: Listing?
    @State private var showDetails = false
    
    @Environment(\.dismiss) var dismiss
    
    init(listings: [Listing], center: CLLocationCoordinate2D = .tokyo) {
        self.listings = listings
        
        let coordinateRegion = MKCoordinateRegion(center: center,
                                                  latitudinalMeters: 5000,
                                                  longitudinalMeters: 5000)
        self._camaeraPosition = State(initialValue: .region(coordinateRegion))
    }
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            ZStack(alignment: .bottom) {
                Map(position: $camaeraPosition, selection: $selectedListing) {
                    ForEach(listings, id: \.self) { listing in
                        Marker("", coordinate: listing.coordinates)
                            .tag(listing.id)
                    }
                }
                
                if let selectedListing {
                    withAnimation(.spring) {
                        ListingMapPreviewView(listing: selectedListing)
                            .onTapGesture { showDetails.toggle() }
                    }
                }
            }
            
            Button {
                dismiss()
            } label: {
                Image(systemName: "chevron.left")
                    .foregroundColor(.black)
                    .background(
                        Circle()
                            .fill(.white)
                            .frame(width: 32, height: 32)
                            .shadow(radius: 4)
                    )
                    .padding(.top, 40)
                    .padding(.leading, 32)
            }
        }
        .fullScreenCover(isPresented: $showDetails, content: {
            if let selectedListing {
                ListingDetailView(listing: selectedListing)
            }
        })
    }
}

#Preview {
    ListingMapView(listings: DeveloperPreview.shared.listings)
}
