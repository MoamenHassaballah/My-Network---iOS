//
//  NaturalResourcesItem.swift
//  My Network
//
//  Created by Moamen Hassaballah on 08/04/2024.
//

import SwiftUI

struct NaturalItem: View {
    
    var naturalModel: NaturalModel = NaturalModel()
    
    var isNaturalResource = true
    
    
    
    var body: some View {
        
        if isNaturalResource {
            VStack(spacing: 20){
                Text(naturalModel.image)
                    .font(.title)
                
                Text(naturalModel.name)
            }
            .frame(width: 100, height: 50)
            .padding(.horizontal, 40)
            .padding(.vertical, 30)
            .background{
                RoundedRectangle(cornerRadius: 10)
                    .opacity(0.2)
            }
            
        }else{
            HStack(spacing: 5){
                Text(naturalModel.image)
                    .font(.headline)
                
                Text(naturalModel.name)
            }
        }
    }
}

#Preview {
    NaturalItem()
}
