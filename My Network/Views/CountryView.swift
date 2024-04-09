//
//  CountryView.swift
//  My Network
//
//  Created by Moamen Hassaballah on 06/04/2024.
//

import SwiftUI

struct CountryView: View {
    
    @EnvironmentObject var deviceManager: DeviceManager
    
    var country: CountryModel = DemoModels().country
    
    var onClick: () -> Void
    
    var body: some View {
        if deviceManager.isiPad(){
            MyCountryView(country: country)
                .onTapGesture {
                    onClick()
                }
        }else{
            MyCountryView(country: country)
        }
    }
    
    
}

struct MyCountryView : View {
    var country: CountryModel
    var body: some View {
        HStack(spacing: 30){
            Text("\(country.flag)")
                .font(.system(size: 50))
                .frame(width: 80, height: 80)
                .background{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.white)
                }
            
            VStack(alignment: .leading, spacing: 10){
                Text("\(country.name.common)")
                    .font(.title2)
                
                Text("Capital City - \(country.capital.first ?? "")")
                    .font(.caption)
            }
        }
        
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background{
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.mCustomGray.opacity(0.5))
        }
    }
}

#Preview {
    CountryView {
        
    }
    .environmentObject(DeviceManager())
    
}
