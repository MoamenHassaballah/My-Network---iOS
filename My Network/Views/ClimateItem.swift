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
        
    
        VStack {
            
            HStack{
                HStack{
                    Text(climate.name)
                        .lineLimit(1)
                        .minimumScaleFactor(0.5)
                    
                    Spacer()
                    
                    HStack(spacing: 30){
                        Text("\(climate.maxTemperature) °C")
                            .lineLimit(1)
                            .minimumScaleFactor(0.5)
                        
                        Text("\(climate.minTemperature) °C")
                            .lineLimit(1)
                            .minimumScaleFactor(0.5)
                        
                    }
                }
            }
            
            
            
        }
        
    }
}

#Preview {
    ClimateItem()
}
