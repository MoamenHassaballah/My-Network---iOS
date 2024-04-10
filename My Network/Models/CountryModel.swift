//
//  CountryModel.swift
//  My Network
//
//  Created by Moamen Hassaballah on 06/04/2024.
//

import Foundation

struct CountryModel : Codable, Hashable {
    let flags: FlagsModel
    let name: Name
    let currencies: [String: Currency]
    let capital: [String]
    let region: String
    let latlng: [Double]
    let area: Double
    let flag: String
    let climate: [ClimateModel]
    let leadership: [LeadershipModel]
    let about: String
    let population: Int
    
}



struct Name: Codable, Hashable {
        let common: String
        let official: String
}
    
struct Currency: Codable, Hashable {
    let name: String
    let symbol: String
}

struct ClimateModel : Codable, Hashable{
    var name: String = "Jan"
    var minTemperature: Int = 5
    var maxTemperature: Int = 20
}

struct LeadershipModel: Codable, Hashable {
    let image: String
    let name: String
    let city: String
    let datePeriod: String
}

struct FlagsModel: Codable, Hashable {
    var png: String
    var svg : String
    var alt : String
}
