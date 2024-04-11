//
//  ContentView.swift
//  My Network
//
//  Created by Moamen Hassaballah on 06/04/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedTab = 2
    @EnvironmentObject var deviceManager: DeviceManager
    
    var body: some View {
        VStack {
//            Text("Profiles")
//                .font(.headline)
            
                //Tab Bar
            
            
            TabsPickerView(selectedTab: $selectedTab)
            if selectedTab == 2{
                CountrySegmentTabView()
            }else{
                Spacer()
            }
            
        }
        .padding()
        
        
        
    }
}

#Preview {
    ContentView()
        .environmentObject(DeviceManager())
}
