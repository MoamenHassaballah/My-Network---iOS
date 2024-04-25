//
//  IndividualsListView.swift
//  My Network
//
//  Created by Moamen Hassaballah on 25/04/2024.
//

import SwiftUI

struct IndividualsListView: View {
    
    @EnvironmentObject var deviceManager: DeviceManager
    
    @StateObject var networkhandler = NetworkHandler()
    
    @Environment(\.colorScheme) var colorScheme
    
    @State var searchText: String = ""
    
    var onIndividualSelection: (_ individual: IndividualModel) -> Void
    
    var body: some View {
        VStack{
            
            if networkhandler.loading{
                ProgressView()
                    .frame(maxWidth: .infinity)
            }else{
                
                
                HStack{
                    
                    Image(systemName: "magnifyingglass")
                    
                    TextField("Search Countries", text: $searchText)
                        .onSubmit {
                            networkhandler.searchCountries(name: searchText)
                        }
                    
                }
                .padding(10)
                .background {
                    RoundedRectangle(cornerRadius: 10)
                        .fill( colorScheme == .dark ?  Color.mCustomGray : Color.mCustomGray.opacity(0.2))
                }
                
                    
                
                ScrollViewReader {proxy in
                    HStack{
                        ScrollView {
                            VStack(alignment: .leading){
                                if searchText.isEmpty {
                                    
                                    //Add countries sections
                                    ForEach(networkhandler.individualsSections, id: \.self ){letter in
                                        Text(letter)
                                            .id(letter)
                                        
                                        let individuals = networkhandler.individualsList.filter{
                                            $0.name.first.starts(with: letter)
                                        }
                                        
                                        ForEach(individuals, id: \.self ){individual in
                                            
                                            CountryListItem(type: .individual(individual: individual), onCountrySelection: {c in }, onIndividualSelection: onIndividualSelection)
                                        }
                                    }
                                }else{
                                    // Show search results
                                    ForEach(networkhandler.searchIndividualsList, id: \.self ){individual in
                                        CountryListItem(type: .individual(individual: individual), onCountrySelection: {c in }, onIndividualSelection: onIndividualSelection)
                                    }
                                }
                            }
                        }
                        
                        
                        LettersScrollBar(sectionsList: networkhandler.individualsSections) { section in
                            withAnimation {
                                proxy.scrollTo(section, anchor: .top)
                            }
                        }
                    }
                }
                
            }
            
        }
        .onAppear{
            if networkhandler.countriesList.isEmpty{
                networkhandler.getIndividualsList()
            }
        }

    }
}

#Preview {
    IndividualsListView { individual in
        
    }
    .environmentObject(DeviceManager())
}
