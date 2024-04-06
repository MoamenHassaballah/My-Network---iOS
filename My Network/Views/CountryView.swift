//
//  CountryView.swift
//  My Network
//
//  Created by Moamen Hassaballah on 06/04/2024.
//

import SwiftUI

struct CountryView: View {
    var body: some View {
        HStack(spacing: 30){
            Text("🇨🇾")
                .font(.system(size: 50))
                .frame(width: 80, height: 80)
                .background{
                    RoundedRectangle(cornerRadius: 10)
                }
            
            VStack(alignment: .leading, spacing: 10){
                Text("United Arab Emirates")
                    .font(.title2)
                
                Text("Capital City - Abu Dhabi")
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
    CountryView()
    
}
