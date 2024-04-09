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
                
                    
                
                ScrollView {
                    VStack(alignment: .leading){
                        
                        
                        if searchText.isEmpty {
                            ForEach(networkhandler.countriesSections, id: \.self ){letter in
                                Text(letter)
                                
                                if letter != "Top"{
                                    let countries = networkhandler.countriesList.filter{
                                        $0.name.common.starts(with: letter)
                                    }
                                    
                                    ForEach(countries, id: \.self ){country in
                                        
                                        if deviceManager.isiPad(){
                                            CountryView(country: country, onClick: {
                                                onCountrySelection(country)
                                            })
                                        }else{
                                            NavigationLink(destination: CountrySummaryView(country: country)) {
                                                CountryView(country: country, onClick: {})
                                            }
                                            .foregroundStyle(.white)
                                        }
                                    }
                                }else{
                                    ForEach(networkhandler.topCountriesList, id: \.self ){country in
                                        if deviceManager.isiPad(){
                                            CountryView(country: country, onClick: {onCountrySelection(country)})
                                        }else{
                                            NavigationLink(destination: CountrySummaryView(country: country)) {
                                                CountryView(country: country, onClick: {})
                                            }
                                            .foregroundStyle(.white)
                                        }
                                    }
                                }
                            }
                        }else{
                            ForEach(networkhandler.searchCountriesList, id: \.self ){country in
                                if deviceManager.isiPad(){
                                    CountryView(country: country, onClick: {onCountrySelection(country)})
                                }else{
                                    NavigationLink(destination: CountrySummaryView(country: country)) {
                                        CountryView(country: country, onClick: {})
                                    }
                                    .foregroundStyle(.white)
                                }
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
