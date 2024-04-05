//
//  CountriesListView.swift
//  My Network
//
//  Created by Moamen Hassaballah on 06/04/2024.
//

import SwiftUI

struct CountriesListView: View {
    
    @State var searchText: String = ""
    @State var lettersList: [String] = ["A", "B", "C", "D"]
    
    var body: some View {
        VStack{
            
            TextField("Search Countries", text: $searchText)
                .padding()
                .background {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.customGray)
                }
            
            ScrollView {
                VStack(alignment: .leading){
                    ForEach(lettersList, id: \.self ){letter in
                        Text(letter)
                        
                        ForEach(lettersList, id: \.self ){letter in
                            CountryView()
                        }
                    }
                }
            }
            
        }
    }
}

#Preview {
    CountriesListView()
}
