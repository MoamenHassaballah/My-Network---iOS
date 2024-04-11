//
//  CountriesListView.swift
//  My Network
//
//  Created by Moamen Hassaballah on 06/04/2024.
//

import SwiftUI

struct CountriesListView: View {
    
    @EnvironmentObject var deviceManager: DeviceManager
    
    @StateObject var networkhandler = NetworkHandler()
    
    @Environment(\.colorScheme) var colorScheme
    
    @State var searchText: String = ""
    
    var onCountrySelection: (_ country: CountryModel) -> Void
    
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
                                    ForEach(networkhandler.countriesSections, id: \.self ){letter in
                                        Text(letter)
                                            .id(letter)
                                        
                                        //Add top countries first
                                        if letter != "Top"{
                                            let countries = networkhandler.countriesList.filter{
                                                $0.name.common.starts(with: letter)
                                            }
                                            
                                            ForEach(countries, id: \.self ){country in
                                                
                                                CountryListItem(country: country, onCountrySelection: onCountrySelection)
                                            }
                                        }else{
                                            
                                            //Add other ordered countries
                                            ForEach(networkhandler.topCountriesList, id: \.self ){country in
                                                CountryListItem(country: country, onCountrySelection: onCountrySelection)
                                            }
                                        }
                                    }
                                }else{
                                    // Show search results
                                    ForEach(networkhandler.searchCountriesList, id: \.self ){country in
                                        CountryListItem(country: country, onCountrySelection: onCountrySelection)
                                    }
                                }
                            }
                        }
                        
                        
                        LettersScrollBar(sectionsList: networkhandler.countriesSections) { section in
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
                networkhandler.getCountriesList()
            }
        }
    }
}

#Preview {
    CountriesListView(onCountrySelection: {country in })
        .environmentObject(DeviceManager())
}
