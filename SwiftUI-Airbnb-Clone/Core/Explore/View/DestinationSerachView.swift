//
//  DestinationSerachView.swift
//  SwiftUI-Airbnb-Clone
//
//  Created by enesozmus on 17.04.2024.
//

import SwiftUI

enum DestinationSearchOptions {
    case location
    case dates
    case guests
}

struct DestinationSerachView: View {
    @Binding var show: Bool
    @ObservedObject var viewModel: ExploreViewModel
    
    @State private var selectedOption: DestinationSearchOptions = .location
    
    @State private var startDate = Date()
    @State private var endDate = Date()
    @State private var numGuests = 0
    
    var body: some View {
        VStack {
            HStack {
                // Back Button
                Button{
                    withAnimation(.snappy) {
                        viewModel.updateListingsForLocation()
                        show.toggle()
                    }
                } label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.black)
                }
                
                Spacer()
                
                if !viewModel.searchLocation.isEmpty {
                    Button("Clear") {
                        viewModel.searchLocation = ""
                        viewModel.updateListingsForLocation()
                    }
                    .foregroundStyle(.black)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }
            }
            .padding()
            
            // location selection view
            VStack {
                if selectedOption == .location {
                    VStack(alignment: .leading) {
                        Text("Where to?")
                            .font(.title2)
                            .fontWeight(.semibold)
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .imageScale(.small)
                            
                            TextField("Search destinations", text: $viewModel.searchLocation)
                                .font(.subheadline)
                                .onSubmit {
                                    viewModel.updateListingsForLocation()
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
                }
                else {
                    CollapsedPickerView(title: "Where", description: "Add destination")
                }
            }
            .modifier(CollapsibleDestinationSearchViewModifier())
            .frame(height: selectedOption == .location ? 120 : 64)
            .onTapGesture {
                withAnimation(.snappy) { selectedOption = .location }
            }
            // ...
            // date selection view
            VStack(alignment: .leading) {
                if selectedOption == .dates {
                    Text("When's your trip?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    VStack{
                        DatePicker("From", selection: $startDate, displayedComponents: .date)
                            .onTapGesture(count: 99, perform: {
                                // overrides tap gesture to fix ios 17.1 bug
                            })
                        
                        Divider()
                        
                        DatePicker("To", selection: $endDate, displayedComponents: .date)
                            .onTapGesture(count: 99, perform: {
                                // overrides tap gesture to fix ios 17.1 bug
                            })
                    }
                    .foregroundStyle(.gray)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                } else {
                    CollapsedPickerView(title: "When", description: "Add dates")
                }
            }
            .modifier(CollapsibleDestinationSearchViewModifier())
            .frame(height: selectedOption == .dates ? 180 : 64)
            .onTapGesture {
                withAnimation(.snappy) { selectedOption = .dates }
            }
            // ...
            // num guests view
            VStack(alignment: .leading) {
                if selectedOption == .guests {
                    Text("Who's coming?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Stepper("\(numGuests) Adults", value: $numGuests, in: 0...12, step: 1)
                    //                    Stepper {
                    //                        Text("\(numGuests) Adults")
                    //                    } onIncrement: {
                    //                        numGuests += 1
                    //                    } onDecrement: {
                    //                        guard numGuests > 0 else { return }
                    //                        numGuests -= 1
                    //                    }
                        .onTapGesture(count: 99, perform: {
                            // overrides tap gesture to fix ios 17.1 bug
                        })
                } else {
                    CollapsedPickerView(title: "Who", description: "Add guests")
                }
            }
            .modifier(CollapsibleDestinationSearchViewModifier())
            .frame(height: selectedOption == .guests ? 120 : 64)
            .onTapGesture {
                withAnimation(.snappy) { selectedOption = .guests }
            }
            
            Spacer()
        }
    }
}

#Preview {
    DestinationSerachView(
        show: .constant(false),
        viewModel: ExploreViewModel(service: ExploreService())
    )
}

// custom view modifier
struct CollapsibleDestinationSearchViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
    }
}
// extract subview
struct CollapsedPickerView: View {
    
    let title: String
    let description: String
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Text(description)
            }
            .fontWeight(.semibold)
            .font(.subheadline)
        }
    }
}
