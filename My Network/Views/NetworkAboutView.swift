//
//  NetworkAboutView.swift
//  My Network
//
//  Created by Moamen Hassaballah on 06/04/2024.
//

import SwiftUI

struct NetworkAboutView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            Text("About the Company")
                .font(.headline)
                .foregroundStyle(Color.mGolden)
            
            Text("The UAE is an elective monarchy formed from a federation of seven emirates, consisting of Abu Dhabi (where the federal capital, Abu Dhabi, is located), Ajman, Dubai, Fujairah, Ras Al Khaimah, Sharjah and Umm Al Quwain.[12] Each emirate is governed by a Sheikh and, together, they form the Federal Supreme Council; one of them serves as President of the United Arab Emirates.")
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background{
            RoundedRectangle(cornerRadius: 10)
                .fill(.white.opacity(0.2))
        }
    }
}

#Preview {
    NetworkAboutView()
}
