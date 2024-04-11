//
//  CountryListItem.swift
//  My Network
//
//  Created by Moamen Hassaballah on 11/04/2024.
//

import SwiftUI

struct CountryListItem: View {
    @EnvironmentObject var deviceManager: DeviceManager
    
    var country: CountryModel
    var onCountrySelection: (_ country: CountryModel) -> Void
    
    var body: some View {
        if deviceManager.isiPad(){
            CountryView(country: country, onClick: {onCountrySelection(country)})
                
        }else{
            NavigationLink(destination: 
                            CountrySummaryView(country: country)
//                .toolbar(.hidden, for: .navigationBar)
                .toolbarBackground(Color.mDarkGreen, for: .navigationBar)
                           
            ) {
                CountryView(country: country, onClick: {})
            }
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    CountryListItem(country: DemoModels().country, onCountrySelection: { country in
        
    })
        .environmentObject(DeviceManager())
}
