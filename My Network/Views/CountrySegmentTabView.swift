//
//  CountrySegmentTabView.swift
//  My Network
//
//  Created by Moamen Hassaballah on 06/04/2024.
//

import SwiftUI

struct CountrySegmentTabView: View {
    var body: some View {
        
        GeometryReader(content: { geometry in
           
            HStack(spacing: 15){
                CountriesListView()
                
                CountrySummaryView()
                    .frame(width: geometry.size.width * 0.7)
                    
            }
            
        })
        
    }
}

#Preview {
    CountrySegmentTabView()
}
