//
//  ProfileDetailsView.swift
//  My Network
//
//  Created by Moamen Hassaballah on 07/04/2024.
//

import SwiftUI

struct ProfileDetailsView: View {
    var body: some View {
        ScrollView{
            VStack(spacing: 20){
                
                Text("Profiles")
                
                VStack(alignment:.leading, spacing: 40){
                    CountryHeader()
                    
                    LazyHGrid(rows: [GridItem(.flexible())], alignment: .center, spacing: 40, content: {
                        
                        //Capital City
                        InfoItemView(image: "location", title: "Capital City", content: "Abu Dhabi")
                        //Area
                        InfoItemView(image: "square.resize", title: "Area", content: "83,600 km")
                        //Currency
                        InfoItemView(image: "dollarsign", title: "Currency", content: "United Arab Emirated Dirham (AED)")
                        //Population
                        InfoItemView(image: "person.2", title: "Population", content: "9.89 Million")
                        
                        
                    })
                    
                }
                .padding()
                .background{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.mDarkGreen)
                }
                
                
                HStack(alignment: .top){
                    VStack(alignment: .leading){
                        Text("Country Overview")
                        
                        NetworkAboutView(addBackground: false)
                        
                        Spacer()
                            .frame(height: 2)
                            .background{Rectangle().fill(.white)}
                        
                        LeadershipView(orientation: 1, hasBackground: false)
                        
                    }
                    .padding()
                    .background{
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.white.opacity(0.1))
                    }
                    
                    
                    VStack {
                        VStack(alignment: .leading, spacing: 40){
                            ClimateView()
                            
                            NaturalView()
                            
                            NaturalView(isNaturalResources: false)
                            
                        }
                        .padding()
                        .background{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.white.opacity(0.1))
                        }
                        
                        
                        TripView()
                    }
                }
                
            }
            
            
        }
        .padding()
        .scrollIndicators(.hidden)
        
    }
}

#Preview {
    ProfileDetailsView()
}
