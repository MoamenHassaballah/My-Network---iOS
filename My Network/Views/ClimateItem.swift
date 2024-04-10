//
//  ClimateItem.swift
//  My Network
//
//  Created by Moamen Hassaballah on 08/04/2024.
//

import SwiftUI

struct ClimateItem: View {
    
    var climate: ClimateModel = ClimateModel()
    
    
    var body: some View {
        
        HStack{
            Text(climate.name)
                .lineLimit(1)
                .minimumScaleFactor(0.5)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack{
                Text("\(climate.maxTemperature) °C")
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
                    .frame(width: 50)
                
                Text("\(climate.minTemperature) °C")
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
                    .frame(width: 50)
                
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        
    }
}

#Preview {
    ClimateItem()
}
