//
//  CountryListItem.swift
//  My Network
//
//  Created by Moamen Hassaballah on 11/04/2024.
//

import SwiftUI

struct CountryListItem: View {
    @EnvironmentObject var deviceManager: DeviceManager
    
    var type: ItemType = .country(country: DemoModels().country)
    
    
    var layout: AnyView = AnyView(Text(""))
    
    
    var destination: AnyView = AnyView(Text(""))
    
    var onCountrySelection: (_ country: CountryModel) -> Void
    
    var onIndividualSelection: (_ individual: IndividualModel) -> Void
    
    
    init(type: ItemType, onCountrySelection: @escaping (_ country: CountryModel) -> Void, onIndividualSelection: @escaping (_ individual: IndividualModel) -> Void) {
        
        self.type = type
        self.layout = AnyView(Text(""))
        self.destination = AnyView(Text(""))
        self.onCountrySelection = onCountrySelection
        self.onIndividualSelection = onIndividualSelection
        
        
        switch(type){
            case .country(let country):
            destination = AnyView(CountrySummaryView(country: country))
            let layoutView = ListItemView(imageUrl: country.flags.png, title: country.name.common, subtitle: "Capital City - \(country.capital.first ?? "")")
                .padding()
                .background{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.mCustomGray.opacity(0.5))
                }
            
            layout = AnyView(layoutView)
                
            case .individual(let individual):
            let layoutView = IndividualItemView(individual: individual)
            layout = AnyView(layoutView)
            default:
                layout = AnyView(Spacer())
        }
    }
    
    
    var body: some View {
        
        
        
        
        
        
        
        
        
        
        
        if deviceManager.isiPad(){
            switch(type){
                case .country(let country):
                    layout
                        .onTapGesture {
                            onCountrySelection(country)
                        }
                    
                case .individual(let individual):
                    layout.onTapGesture {
                        onIndividualSelection(individual)
                    }
                    
                default:
                    layout
                        .onTapGesture {
                        }
            }
            
                
        }else{
            NavigationLink(destination:
                            destination
//                .toolbar(.hidden, for: .navigationBar)
                .toolbarBackground(Color.mDarkGreen, for: .navigationBar)
                           
            ) {
                layout
            }
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    CountryListItem(type: .individual(individual: DemoModels().individualDemo),  onCountrySelection: { country in
        
    },
                    onIndividualSelection: { individual in
        
    }
    
    )
        .environmentObject(DeviceManager())
}
