//
//  CountrySummary.swift
//  My Network
//
//  Created by Moamen Hassaballah on 06/04/2024.
//

import SwiftUI

struct CountrySummaryView: View {
    var body: some View {
        VStack(){
            //Header
            CountryHeader()
            
            Spacer()
            
            //Details
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], alignment: .leading, spacing: 40, content: {
                
                //Capital City
                InfoItemView(image: "location", title: "Capital City", content: "Abu Dhabi")
                //Area
                InfoItemView(image: "square.resize", title: "Area", content: "83,600 km")
                //Currency
                InfoItemView(image: "dollarsign", title: "Currency", content: "United Arab Emirated Dirham (AED)")
                //Population
                InfoItemView(image: "person.2", title: "Population", content: "9.89 Million")
                
                
            })
            
            Spacer()
            
            NetworkAboutView()
                
            Spacer()
            
            LeadershipView()
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Text("View Full Profile")
                    .padding()
                    .background{
                        RoundedRectangle(cornerRadius: 10)
                            .stroke()
                    }
            })
            .foregroundStyle(.white)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background{
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.mDarkGreen)
        }
        
        
       
        
    }
}

#Preview {
    CountrySummaryView()
}
