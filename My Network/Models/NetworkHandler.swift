//
//  NetworkHandler.swift
//  My Network
//
//  Created by Moamen Hassaballah on 09/04/2024.
//

import Foundation

class NetworkHandler : ObservableObject {
    
    @Published var loading: Bool = false
    
    //Countries Related
    @Published var countriesList: [CountryModel] = []
    @Published var searchCountriesList: [CountryModel] = []
    @Published var topCountriesList: [CountryModel] = []
    @Published var countriesSections: [String] = []
    private var countriesStaticList: [CountryModel] = []
    private var topCountries = [
        "United Arab Emirates", "Kingdom of Bahrain", "Kingdom of Saudi Arabia",
                                       "Sultanate of Oman", "State of Qatar", "State of Kuwait"
    ]
    
    
    
    //Individual Related
    @Published var individualsList: [IndividualModel] = []
    @Published var searchIndividualsList: [IndividualModel] = []
    @Published var individualsSections: [String] = []
    private var individualsStaticList: [IndividualModel] = []
    
    
    // MARK: -  Get countries and handle countries response
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
        
        handleCountriesResponse(list: countries)
        } catch {
            print("Error loading/parsing JSON: \(error)")
        }
    }
    
    func searchCountries(name: String){
        let search = countriesStaticList.filter{$0.name.common.lowercased().contains(name.lowercased())}
        searchCountriesList = []
        searchCountriesList.append(contentsOf: search)
    }
    
    func handleCountriesResponse(list: [CountryModel]){
        
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
    
    
    
    // MARK: -  Get individuals and handle individuals response
    
    func getIndividualsList(){
        loading = true
        guard let fileURL = Bundle.main.url(forResource: "individuals", withExtension: "json") else {
                print("JSON file not found")
            loading = false
                return
            }
        
        
    do {
            // Load JSON data from the file
            let jsonData = try Data(contentsOf: fileURL)
            
            // Decode JSON data into a Country object
        let individuals = try JSONDecoder().decode([(IndividualModel)].self, from: jsonData)
        
        handleIndividualsResponse(list: individuals)
        } catch {
            print("Error loading/parsing JSON: \(error)")
        }
    }
    
    func searchIndividuals(name: String){
        let search = individualsStaticList.filter{$0.name.first.lowercased().contains(name.lowercased()) || $0.name.last.lowercased().contains(name.lowercased())}
        searchIndividualsList = []
        searchIndividualsList.append(contentsOf: search)
    }
    
    func handleIndividualsResponse(list: [IndividualModel]){
        
        print("List Count: \(list.count)")
        var individuals  = list
        individuals.sort{"\($0.name.first) \($0.name.last)" < "\($1.name.first) \($1.name.last)"}
        
        
        var sections: Set<String> = []
        individuals.forEach { individual in
            sections.insert("\(individual.name.first.first?.description ?? "")")
        }
        
        individualsSections.append(contentsOf: sections.sorted())
        
        individualsList.append(contentsOf: individuals)
        individualsStaticList.append(contentsOf: individuals)
        
        
        loading = false
    }
    
    
}
