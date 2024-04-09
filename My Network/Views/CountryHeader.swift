//
//  CountryHeader.swift
//  My Network
//
//  Created by Moamen Hassaballah on 07/04/2024.
//

import SwiftUI

struct CountryHeader: View {
    
    @EnvironmentObject var deviceManger: DeviceManager
    
    var country: CountryModel
    
    var body: some View {
        HStack(spacing: 20){
            Text("\(country.flag)")
                .font(.system(size: deviceManger.countryFlagFontSize()))
                .frame(width: deviceManger.countryFlagDimentions(), height: deviceManger.countryFlagDimentions())
                .background{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.white)
                }
            
            Text("\(country.name.common)")
                .font(deviceManger.isiPad() ?  .title : .headline)
                .foregroundStyle(.white)
            
            
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "star")
            })
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    CountryHeader(country: DemoModels().country)
        .environmentObject(DeviceManager())
}
