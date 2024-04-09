//
//  LeadershipItem.swift
//  My Network
//
//  Created by Moamen Hassaballah on 06/04/2024.
//

import SwiftUI

struct LeadershipItem: View {
    
    var leadershipModel: LeadershipModel
    
    var body: some View {
        HStack(alignment: .top, spacing: 20){
            AsyncImage(url: URL(string:leadershipModel.image)!) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
            
            
            VStack(alignment: .leading, spacing: 10){
                Text(leadershipModel.name)
                    .font(.title2)
                
                Text(leadershipModel.city)
                    .font(.caption)
                
                Text(leadershipModel.datePeriod)
                    .font(.caption)
            }
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    LeadershipItem(leadershipModel: DemoModels().leadershipDemo)
}
