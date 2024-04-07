//
//  CountryModel.swift
//  My Network
//
//  Created by Moamen Hassaballah on 06/04/2024.
//

import Foundation

struct CountryModel : Codable {
    
    
    
}


struct CountryName : Codable {
    var official: String? = ""
}


struct ClimateModel : Codable{
    var month: String = "Jan"
    var minTemperature: String = "5 C"
    var maxTemperature: String = "20 C"
}
