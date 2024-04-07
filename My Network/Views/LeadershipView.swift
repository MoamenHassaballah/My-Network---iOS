//
//  LeadershipView.swift
//  My Network
//
//  Created by Moamen Hassaballah on 06/04/2024.
//

import SwiftUI

struct LeadershipView: View {
    
    var orientation = 0 // 0 for horizontal & 1 for vertical
    var hasBackground = true
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            Text("Country Leadership")
                .font(.headline)
                .foregroundStyle(Color.mGolden)
            
            if orientation == 0 {
                
                HStack(){
                    LeadershipItem()
                    Spacer()
                    LeadershipItem()
                }
            }else{
                VStack(spacing: 20){
                    LeadershipItem()
                    LeadershipItem()
                }
            }
        }
        .padding()
        .background{
            if hasBackground {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.white.opacity(0.2))
            }
        }
    }
}

#Preview {
    LeadershipView()
}
