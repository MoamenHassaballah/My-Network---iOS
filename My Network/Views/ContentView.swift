//
//  ContentView.swift
//  My Network
//
//  Created by Moamen Hassaballah on 06/04/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedTab = 0
    @EnvironmentObject var deviceManager: DeviceManager
    
    var body: some View {
        VStack {
//            Text("Profiles")
//                .font(.headline)
            
                //Tab Bar
            
            
            TabsPickerView(selectedTab: $selectedTab)
            if selectedTab == 2{
                CountrySegmentTabView(type: .country(country: DemoModels().country))
            }else if selectedTab == 0 {
                CountrySegmentTabView(type: .individual(individual: DemoModels().individualDemo))
            } else{
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
