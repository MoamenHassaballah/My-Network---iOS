//
//  ListItemProvider.swift
//  My Network
//
//  Created by Moamen Hassaballah on 16/04/2024.
//

import SwiftUI

struct ListItemProvider: View {
    
    var itemType:  ItemType
    
    var body: some View {
        switch (itemType){
        case .country(let country):
            ListItemView(
                imageUrl: country.flags.png,
                title: country.name.common,
                subtitle: country.capital.first ?? ""
            )
         
        case .individual(let individual):
            IndividualItemView(individual: individual)
        
            
        default:
            Text("")
        }
    }
}

#Preview {
    ListItemProvider(itemType: ItemType.individual(individual: DemoModels().individualDemo))
}
