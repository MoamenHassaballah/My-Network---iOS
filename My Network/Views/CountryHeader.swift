//
//  CountryHeader.swift
//  My Network
//
//  Created by Moamen Hassaballah on 07/04/2024.
//

import SwiftUI

struct CountryHeader: View {
    var body: some View {
        HStack(spacing: 20){
            Text("🇨🇾")
                .font(.system(size: 50))
                .frame(width: 80, height: 80)
                .background{
                    RoundedRectangle(cornerRadius: 10)
                }
            
            Text("United Arab Emirates")
                .font(.title)
            
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "star")
            })
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    CountryHeader()
}
