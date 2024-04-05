//
//  ContentView.swift
//  My Network
//
//  Created by Moamen Hassaballah on 06/04/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedTab = 2
    
    var body: some View {
        VStack {
            Text("Profiles")
                .font(.headline)
            
                //Tab Bar
            
            HStack{
                Picker("What is your favorite color?", selection: $selectedTab) {
                                Text("Individuals").tag(0)
                                Text("Entities").tag(1)
                                Text("Countries").tag(2)
                            }
                            
                            .pickerStyle(.segmented)
                            .fixedSize()
                
                Spacer()
                
                Button(action: {}, label: {
                    HStack{
                        Image(systemName: "line.3.horizontal.decrease")
                        Text("Filter")
                    }
                    .padding(5)
                    .background{
                        RoundedRectangle(cornerRadius: 5)
                            .stroke()
                    }
                })
                .foregroundStyle(.white)
                
            }
            .padding()
            .background {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.customGray)
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
