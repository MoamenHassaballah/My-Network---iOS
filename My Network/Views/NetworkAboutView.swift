//
//  NetworkAboutView.swift
//  My Network
//
//  Created by Moamen Hassaballah on 06/04/2024.
//

import SwiftUI

struct NetworkAboutView: View {
    
    var aboutText: String
    var addBackground = true
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            Text("About the Company")
                .font(.headline)
                .foregroundStyle(Color.mGolden)
            
            Text(aboutText)
                .foregroundStyle(.white)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background{
            if addBackground {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.white.opacity(0.2))
            }
        }
    }
}

#Preview {
    NetworkAboutView(aboutText: "The UAE is an elective monarchy formed from a federation of seven emirates, consisting of Abu Dhabi (where the federal capital, Abu Dhabi, is located)")
}
