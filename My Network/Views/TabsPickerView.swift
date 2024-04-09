//
//  TabsPickerView.swift
//  My Network
//
//  Created by Moamen Hassaballah on 09/04/2024.
//

import SwiftUI

struct TabsPickerView: View {
    
    @Environment(\.colorScheme) var colorScheme
    @EnvironmentObject var deviceManager: DeviceManager
    
    @Binding var selectedTab: Int
    
    var body: some View {
        
        Picker("What is your favorite color?", selection: $selectedTab) {
                        Text("Individuals").tag(0)
                        Text("Entities").tag(1)
                        Text("Countries").tag(2)
                    }
                    
                    .pickerStyle(.segmented)
                    .fixedSize()
        
    }
}

#Preview {
    TabsPickerView(selectedTab: .constant(2))
        .environmentObject(DeviceManager())
}
