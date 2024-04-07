//
//  NaturalResourceView.swift
//  My Network
//
//  Created by Moamen Hassaballah on 08/04/2024.
//

import SwiftUI

struct NaturalView: View {
    
    var isNaturalResources = true
    
    
    let naturalResources: [NaturalModel] = [
        NaturalModel(image: "💧", name: "Water"),
        NaturalModel(image: "🌳", name: "Forests"),
        NaturalModel(image: "⛏️", name: "Minerals"),
        NaturalModel(image: "🌱", name: "Fertile Land"),
        NaturalModel(image: "🐟", name: "Fisheries"),
        NaturalModel(image: "🛢️", name: "Oil"),
        NaturalModel(image: "🔥", name: "Natural Gas"),
        NaturalModel(image: "⛏️", name: "Coal"),
        NaturalModel(image: "🌬️", name: "Wind Energy"),
        NaturalModel(image: "☀️", name: "Solar Energy")
    ]
    
    
    let naturalHazards: [NaturalModel] = [
        NaturalModel(image: "🌪️", name: "Tornado"),
        NaturalModel(image: "🌊", name: "Tsunami"),
        NaturalModel(image: "🌋", name: "Volcano"),
        NaturalModel(image: "🌪️", name: "Cyclone"),
        NaturalModel(image: "🌀", name: "Hurricane"),
        NaturalModel(image: "🌩️", name: "Lightning"),
        NaturalModel(image: "🌪️", name: "Whirlwind"),
        NaturalModel(image: "🌪️", name: "Windstorm"),
        NaturalModel(image: "🌪️", name: "Dust Storm"),
        NaturalModel(image: "🌪️", name: "Twister")
    ]
    
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            Text(isNaturalResources ? "Natural Resources" : "Natural Hazards")
                .font(.headline.weight(.regular))
            
            ScrollView(.horizontal) {
                HStack(spacing: isNaturalResources ? 20 : 40){
                    if isNaturalResources{
                        ForEach(naturalResources, id: \.self) { resource in
                            NaturalItem(naturalModel: resource)
                        }
                        
                    }else{
                        ForEach(naturalHazards, id: \.self) { resource in
                            NaturalItem(naturalModel: resource, isNaturalResource: false)
                        }
                    }
                }
            }
            .scrollIndicators(.hidden)
            
        }
    }
}

#Preview {
    NaturalView()
}
