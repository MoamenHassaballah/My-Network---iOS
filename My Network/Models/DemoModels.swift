//
//  DemoModels.swift
//  My Network
//
//  Created by Moamen Hassaballah on 09/04/2024.
//

import Foundation

class DemoModels {
    var country: CountryModel = CountryModel(
        name: Name(common: "Demo Country", official: "Official Demo Country"),
        currencies: ["USD": Currency(name: "United States Dollar", symbol: "$")],
        capital: ["Demo City"],
        region: "Demo Region",
        latlng: [0, 0],
        area: 1000.0,
        flag: "🏳️",
        climate: [
            ClimateModel(name: "January", minTemperature: -5, maxTemperature: 5),
            ClimateModel(name: "February", minTemperature: -3, maxTemperature: 8),
            ClimateModel(name: "March", minTemperature: 0, maxTemperature: 12),
            ClimateModel(name: "April", minTemperature: 5, maxTemperature: 18),
            ClimateModel(name: "May", minTemperature: 10, maxTemperature: 22),
            ClimateModel(name: "June", minTemperature: 15, maxTemperature: 25),
            ClimateModel(name: "July", minTemperature: 18, maxTemperature: 28),
            ClimateModel(name: "August", minTemperature: 16, maxTemperature: 27),
            ClimateModel(name: "September", minTemperature: 12, maxTemperature: 23),
            ClimateModel(name: "October", minTemperature: 7, maxTemperature: 17),
            ClimateModel(name: "November", minTemperature: 2, maxTemperature: 10),
            ClimateModel(name: "December", minTemperature: -2, maxTemperature: 6)
        ],
        leadership: [
            LeadershipModel(image: "https://example.com/image.jpg", name: "John Doe", city: "Demo City", datePeriod: "2010-2020")
        ],
        population: 1000000
    )
    
    
    let leadershipDemo = LeadershipModel(image: "https://example.com/image.jpg", name: "John Doe", city: "Demo City", datePeriod: "2010-2020")
}