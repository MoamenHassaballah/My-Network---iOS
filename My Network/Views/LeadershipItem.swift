//
//  LeadershipItem.swift
//  My Network
//
//  Created by Moamen Hassaballah on 06/04/2024.
//

import SwiftUI

struct LeadershipItem: View {
    
    
    let imageURL = URL(string: "https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg")!
    
    var body: some View {
        HStack(alignment: .top, spacing: 20){
            AsyncImage(url: imageURL) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
            
            
            VStack(alignment: .leading, spacing: 10){
                Text("H.H. Sheikh Khalifa bin Zayed Al Nahyan")
                    .font(.title2)
                
                Text("Abu Dhabi")
                    .font(.caption)
                
                Text("2015 - Present")
                    .font(.caption)
            }
        }
    }
}

#Preview {
    LeadershipItem()
}
