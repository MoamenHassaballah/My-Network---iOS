//
//  LeadershipView.swift
//  My Network
//
//  Created by Moamen Hassaballah on 06/04/2024.
//

import SwiftUI

struct LeadershipView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            Text("Country Leadership")
                .font(.headline)
                .foregroundStyle(Color.mGolden)
            
            HStack(){
                LeadershipItem()
                Spacer()
                LeadershipItem()
            }
        }
        .padding()
        .background{
            RoundedRectangle(cornerRadius: 10)
                .fill(.white.opacity(0.2))
        }
    }
}

#Preview {
    LeadershipView()
}
