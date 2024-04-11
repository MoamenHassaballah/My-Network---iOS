//
//  My_NetworkApp.swift
//  My Network
//
//  Created by Moamen Hassaballah on 06/04/2024.
//

import SwiftUI

@main
struct My_NetworkApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                
                ContentView()
                    .environmentObject(DeviceManager())
                    .navigationTitle("Profiles")
                    .navigationBarTitleDisplayMode(.inline)
                
            }
            .environmentObject(DeviceManager())
            .navigationViewStyle(StackNavigationViewStyle())
            
        }
    }
}
