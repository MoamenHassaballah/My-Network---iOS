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
        
        let layout = HStack(spacing: 20){
            
            AsyncImage(url: URL(string: country.flags.png)) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 80, height: 50)

//            Text("\(country.flag)")
//                .font(.system(size: 50))
//                .frame(width: 80, height: 80)
//                .background{
//                    RoundedRectangle(cornerRadius: 10)
//                        .fill(.white)
//                }
            
            VStack(alignment: .leading, spacing: 10){
                Text("\(country.name.common)")
                    .font(.headline)
                
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
        
        if deviceManager.isiPad(){
            layout.onTapGesture {
                    onClick()
                }
        }else{
            layout
        }
    }
    
    
}


#Preview {
    CountryView {
        
    }
    .environmentObject(DeviceManager())
    
}
