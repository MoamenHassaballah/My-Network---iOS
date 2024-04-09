//
//  LeadershipView.swift
//  My Network
//
//  Created by Moamen Hassaballah on 06/04/2024.
//

import SwiftUI

struct LeadershipView: View {
    @EnvironmentObject var deviceManager: DeviceManager
    
    var orientation = 0 // 0 for horizontal & 1 for vertical
    var hasBackground = true
    
    var leadershipList: [LeadershipModel]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            Text("Country Leadership")
                .font(.headline)
                .foregroundStyle(Color.mGolden)
            
            if orientation == 0 && deviceManager.isiPad() {
                
                HStack(){
                    if leadershipList.count > 0 {
                        LeadershipItem(leadershipModel: leadershipList[0])
                    }
                    Spacer()
                    
                    if leadershipList.count > 1 {
                        LeadershipItem(leadershipModel: leadershipList[1])
                    }
                }
            }else{
                VStack(spacing: 20){
                    ForEach(leadershipList, id: \.self){ leadership in
                        LeadershipItem(leadershipModel: leadership)
                    }
                }
            }
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background{
            if hasBackground {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.white.opacity(0.2))
            }
        }
    }
}

#Preview {
    LeadershipView(leadershipList: [DemoModels().leadershipDemo, DemoModels().leadershipDemo, DemoModels().leadershipDemo])
        .environmentObject(DeviceManager())
}
