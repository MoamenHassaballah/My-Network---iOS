//
//  IndividualItemView.swift
//  My Network
//
//  Created by Moamen Hassaballah on 16/04/2024.
//

import SwiftUI

struct IndividualItemView: View {
    @EnvironmentObject var deviceManager: DeviceManager
    
    var individual: IndividualModel = DemoModels().individualDemo
    
    
    var body: some View {
        HStack{
            
            ListItemView(
                imageUrl: individual.picture.large,
                imageFrameWidth: 80,
                imageFrameHeight: 80,
                imageClipshape: AnyShape(Circle()),
                title: "\(individual.name.title)/ \(individual.name.first) \(individual.name.last)",
                subtitle: "\(individual.email)"
            )
            
            
            
            Spacer()
            
            VStack{
                
                Text("Tier 1")
                    .font(.subheadline)
                    .padding(.horizontal, 30)
                    .padding(.vertical, 5)
                    .background{
                        RoundedRectangle(cornerRadius: 20)
                            .stroke()
                    }
                
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
    IndividualItemView()
        .environmentObject(DeviceManager())
}
