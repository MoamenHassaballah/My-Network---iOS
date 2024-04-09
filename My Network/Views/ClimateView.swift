//
//  ClimateView.swift
//  My Network
//
//  Created by Moamen Hassaballah on 07/04/2024.
//

import SwiftUI

struct ClimateView: View {
    
    @EnvironmentObject var deviceManager: DeviceManager
    
    let climateList: [ClimateModel] = [
        ClimateModel(name: "January", minTemperature: -5, maxTemperature: 5),
                ClimateModel(name: "February", minTemperature: -3, maxTemperature: 8),
                ClimateModel(name: "March", minTemperature: 0, maxTemperature: 12),
                ClimateModel(name: "April", minTemperature: 5, maxTemperature: 18),
                ClimateModel(name: "May", minTemperature: 10, maxTemperature: 22),
                ClimateModel(name: "June", minTemperature: 15, maxTemperature: 25),
                ClimateModel(name: "July", minTemperature: 18, maxTemperature: 28),
                ClimateModel(name: "August", minTemperature: 16, maxTemperature: 27),
                ClimateModel(name: "September", minTemperature: 12, maxTemperature: 23),
                ClimateModel(name: "October", minTemperature: 7, maxTemperature: 17),
                ClimateModel(name: "November", minTemperature: 2, maxTemperature: 10),
                ClimateModel(name: "December", minTemperature: -2, maxTemperature: 6)
    ]
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            Text("Climate")
            
            VStack{
                
                ForEach(0..<climateList.count, id: \.self, content: { index in
                 
                    if deviceManager.isiPad(){
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
                    }else {
                        ClimateItem(climate: climateList[index])
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
        .environmentObject(DeviceManager())
}
