//
//  ClimateView.swift
//  My Network
//
//  Created by Moamen Hassaballah on 07/04/2024.
//

import SwiftUI

struct ClimateView: View {
    
    let climateList: [ClimateModel] = [
        ClimateModel(month: "January", minTemperature: "-5°C", maxTemperature: "5°C"),
        ClimateModel(month: "February", minTemperature: "-3°C", maxTemperature: "8°C"),
        ClimateModel(month: "March", minTemperature: "0°C", maxTemperature: "12°C"),
        ClimateModel(month: "April", minTemperature: "5°C", maxTemperature: "18°C"),
        ClimateModel(month: "May", minTemperature: "10°C", maxTemperature: "22°C"),
        ClimateModel(month: "June", minTemperature: "15°C", maxTemperature: "25°C"),
        ClimateModel(month: "July", minTemperature: "18°C", maxTemperature: "28°C"),
        ClimateModel(month: "August", minTemperature: "16°C", maxTemperature: "27°C"),
        ClimateModel(month: "September", minTemperature: "12°C", maxTemperature: "23°C"),
        ClimateModel(month: "October", minTemperature: "7°C", maxTemperature: "17°C"),
        ClimateModel(month: "November", minTemperature: "2°C", maxTemperature: "10°C"),
        ClimateModel(month: "December", minTemperature: "-2°C", maxTemperature: "6°C")
    ]
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            Text("Climate")
            
            VStack{
                
                ForEach(0..<climateList.count, id: \.self, content: { index in
                 
                    if index % 2 == 0 {
                        let firstClimate = climateList[index]
                        let secondClimate = index + 1 < climateList.count ? climateList[index + 1] : nil
                        
                        HStack(){
                            ClimateItem(climate: firstClimate)
                            
                            if let secondClimate = secondClimate {
                                ClimateItem(climate: secondClimate)
                            }
                            
                            
                        }
                        
                        
                        Divider()
                        
                    }
                    
                })
                
                
                
                
                
            }
            
            
            
        }
        .frame(maxWidth: .infinity)
       
    }
}

#Preview {
    ClimateView()
}
