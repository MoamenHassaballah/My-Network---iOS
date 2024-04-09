//
//  NetworkHandler.swift
//  My Network
//
//  Created by Moamen Hassaballah on 09/04/2024.
//

import Foundation

class NetworkHandler : ObservableObject {
    
    @Published var loading: Bool = false
    @Published var countriesList: [CountryModel] = []
    @Published var searchCountriesList: [CountryModel] = []
    @Published var topCountriesList: [CountryModel] = []
    @Published var countriesSections: [String] = []
    
    private var countriesStaticList: [CountryModel] = []
    
    private var topCountries = ["United Arab Emirates", "Kingdom of Bahrain", "Kingdom of Saudi Arabia",
                                       "Sultanate of Oman", "State of Qatar", "State of Kuwait"
    ]
    
    
    func getCountriesList(){
        loading = true
        guard let fileURL = Bundle.main.url(forResource: "countries", withExtension: "json") else {
                print("JSON file not found")
            loading = false
                return
            }
        
        
    do {
            // Load JSON data from the file
            let jsonData = try Data(contentsOf: fileURL)
            
            // Decode JSON data into a Country object
        let countries = try JSONDecoder().decode([CountryModel].self, from: jsonData)
        
        handleResponse(list: countries)
        } catch {
            print("Error loading/parsing JSON: \(error)")
        }
    }
    
    func searchCountries(name: String){
        let search = countriesStaticList.filter{$0.name.common.lowercased().contains(name.lowercased())}
        searchCountriesList = []
        searchCountriesList.append(contentsOf: search)
    }
    
    func handleResponse(list: [CountryModel]){
        
        print("List Count: \(list.count)")
        var countries = list
        countries.sort{$0.name.official < $1.name.official}
        
        let remainingCountriesSorted = countries.filter{!topCountries.contains($0.name.official)}.sorted{$0.name.official < $1.name.official}
        
       
        
        var sections: Set<String> = []
        remainingCountriesSorted.forEach { country in
            sections.insert("\(country.name.common.first?.description ?? "")")
        }
        
        countriesSections.append("Top")
        countriesSections.append(contentsOf: sections.sorted())
        
        
        topCountriesList = countries.filter{topCountries.contains($0.name.official)}.sorted{$0.name.official < $1.name.official}
        countriesList.append(contentsOf: remainingCountriesSorted)
        countriesStaticList.append(contentsOf: countries)
        
        
        loading = false
    }
    
    
    
}
