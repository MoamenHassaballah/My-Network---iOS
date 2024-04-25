//
//  CountryView.swift
//  My Network
//
//  Created by Moamen Hassaballah on 06/04/2024.
//

import SwiftUI

struct ListItemView: View {
    
    @EnvironmentObject var deviceManager: DeviceManager
    
    var imageUrl = DemoModels().country.flags.png
    var imageFrameWidth: CGFloat = 80
    var imageFrameHeight: CGFloat = 50
    var imageClipshape: AnyShape = AnyShape(Rectangle())
    var title = DemoModels().country.name.common
    var subtitle = DemoModels().country.capital.first ?? ""
    
    
    var body: some View {
        
        HStack(spacing: 20){
            
            AsyncImage(url: URL(string: imageUrl)) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(width: imageFrameWidth, height: imageFrameHeight)
            .clipShape(imageClipshape)
            
            VStack(alignment: .leading, spacing: 10){
                Text("\(title)")
                    .font(.headline)
                
                Text("\(subtitle)")
                    .font(.caption)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        
    }
    
    
}


#Preview {
    ListItemView()
    .environmentObject(DeviceManager())
    
}
