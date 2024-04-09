//
//  CountrySegmentTabView.swift
//  My Network
//
//  Created by Moamen Hassaballah on 06/04/2024.
//

import SwiftUI

struct CountrySegmentTabView: View {
    
    @EnvironmentObject var deviceManager: DeviceManager
    
    @State var countryModel : CountryModel = DemoModels().country
    
    var body: some View {
        
        GeometryReader(content: { geometry in
           
            HStack(spacing: 15){
                CountriesListView { country in
                    
                    countryModel = country
                }
                
                if deviceManager.isiPad(){
                    if countryModel.name.common.contains("Demo"){
                        Spacer()
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
