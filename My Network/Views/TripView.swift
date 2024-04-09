//
//  TripView.swift
//  My Network
//
//  Created by Moamen Hassaballah on 08/04/2024.
//

import SwiftUI

struct TripView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            Text("Trips")
                .font(.title)
                .foregroundColor(.white)
            
            
            HStack(alignment: .bottom) {
                VStack (alignment: .leading){
                    Text("Trips to UAE")
                        .font(.headline)
                    .foregroundColor(Color.mGolden)
                    
                    Text("12 Trips/Year")
                        .font(.title2)
                        .foregroundColor(.white)
                }
                Spacer()
                Button(action: {}, label: {
                    Text("View All Trips")
                        .font(.subheadline)
                        .padding(.horizontal, 40)
                        .padding(.vertical, 10)
                        .background{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.white)
                        }
                })
                .foregroundStyle(.black)
            }
            
            
            VStack(alignment: .leading, spacing: 10){
                
                Text("Last Trip")
                    .font(.headline)
                    .foregroundColor(Color.mGolden)
                Text("UAE Trip")
                    .font(.title3)
                    .foregroundColor(.white)
                Text("This trip was scheduled so that you could attend the Arab African International Investment Forum in Abu Dhabi.")
                    .foregroundColor(.white)
                    .lineLimit(3)
                HStack(spacing: 30) {
                    
                    HStack{
                        Image(systemName: "calendar")
                        Text("01 Aug, 2021 - 27 Aug, 2021")
                            .foregroundColor(.white)
                    }
                    
                    
                    HStack{
                        Image(systemName: "airplane")
                        Text("Boeing Jet - 456")
                            .foregroundColor(.white)
                    }
                    
                }
                
            }
            
            Button(action: {}, label: {
                Text("View Trip Details")
                    .font(.subheadline)
                    .padding(.horizontal, 40)
                    .padding(.vertical, 10)
                    .background{
                        RoundedRectangle(cornerRadius: 10)
                            .stroke()
                            .fill(.white)
                    }
                
            })
            .foregroundColor(.white)
        }
        .padding(40)
        .background{
            RoundedRectangle(cornerRadius: 10)
                .fill(colorScheme == .dark ?  .white.opacity(0.1) :  .black.opacity(0.5))
        }
    }
}

#Preview {
    TripView()
}
