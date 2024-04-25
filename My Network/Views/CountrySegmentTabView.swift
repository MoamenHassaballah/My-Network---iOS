//
//  CountrySegmentTabView.swift
//  My Network
//
//  Created by Moamen Hassaballah on 06/04/2024.
//

import SwiftUI

struct CountrySegmentTabView: View {
    
    @EnvironmentObject var deviceManager: DeviceManager
    
    var type: ItemType = .individual(individual: DemoModels().individualDemo)
    
    @State var countryModel : CountryModel = DemoModels().country
    @State var individualModel : IndividualModel = DemoModels().individualDemo
    
    var body: some View {
        
        GeometryReader(content: { geometry in
           
            HStack(spacing: 15){
                if case .country(_) = type {
                    CountriesListView { country in
                        
                        countryModel = country
                    }
                } else if case .individual(_) = type {
                    IndividualsListView { individual in
                        individualModel = individual
                    }
                }
                
                
                if deviceManager.isiPad(){
                    if countryModel.name.common.contains("Demo"){
                        Text("Please select country to display data")
                            .frame(width: geometry.size.width * 0.7)
                    }else{
                        CountrySummaryView(country: countryModel)
                            .frame(width: geometry.size.width * 0.7)
                    }
                }
                    
            }
            
        })
        
    }
}

#Preview {
    CountrySegmentTabView(countryModel: DemoModels().country)
        .environmentObject(DeviceManager())
}
