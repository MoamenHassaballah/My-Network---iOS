//
//  InfoItemView.swift
//  My Network
//
//  Created by Moamen Hassaballah on 06/04/2024.
//

import SwiftUI

struct InfoItemView: View {
    
    var image: String = "location"
    var title: String = "Capital City"
    var content: String = "Abu Dhabi"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            HStack{
                Image(systemName: image)
                    .foregroundStyle(Color.mGolden)
                
                Text(title)
                    .font(.subheadline)
                    .foregroundStyle(Color.mGolden)
            }
            
            Text(content)
                .font(.headline.weight(.regular))
                .foregroundStyle(Color.white)
        }
    }
}

#Preview {
    InfoItemView()
}
