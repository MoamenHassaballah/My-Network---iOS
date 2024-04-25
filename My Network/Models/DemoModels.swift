//
//  DemoModels.swift
//  My Network
//
//  Created by Moamen Hassaballah on 09/04/2024.
//

import Foundation

class DemoModels {
    var country: CountryModel = CountryModel(
        flags: FlagsModel(png: "https://png.pngitem.com/pimgs/s/498-4982415_white-blur-png-transparent-png.png", svg: "https://png.pngitem.com/pimgs/s/498-4982415_white-blur-png-transparent-png.png", alt: "white flag"),
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
        about: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        population: 1000000
    )
    
    
    let leadershipDemo = LeadershipModel(image: "https://cdn3d.iconscout.com/3d/premium/thumb/arab-man-avatar-11044052-8842456.png", name: "John Doe", city: "Demo City", datePeriod: "2010-2020")
    
    
    
    let individualDemo = IndividualModel(
        gender: "male",
        name: IndividualModel.Name(title: "Mr", first: "Adán", last: "Moya"),
        location: IndividualModel.Location(
            street: IndividualModel.Street(number: 2868, name: "Cerrada Sur Valverde"),
            city: "Nacozari",
            state: "Zacatecas",
            country: "Mexico",
            postcode: "74515",
            coordinates: IndividualModel.Coordinates(latitude: "27.5550", longitude: "-70.4002"),
            timezone: IndividualModel.Timezone(offset: "-2:00", description: "Mid-Atlantic")
        ),
        email: "adan.moya@example.com",
        login: IndividualModel.Login(
            uuid: "096458fb-4222-4fbe-914d-ef14163b23b7",
            username: "crazysnake920",
            password: "ashleigh",
            salt: "rijh0R3h",
            md5: "2993a6a1f04d43600a6ead25854bcf63",
            sha1: "83bc70c51ba7e2d0dccf3671dfde86c0fcbf82fb",
            sha256: "48921747d5f8620dcd279a72a55b456f75dd0d8b252788b57aac9af5bc8a0e10"
        ),
        dob: IndividualModel.Dob(date: "2000-03-17T21:51:22.555Z", age: 24), // Provide the actual date
        registered: IndividualModel.Registered(date: "2000-03-17T21:51:22.555Z", age: 20), // Provide the actual date
        phone: "(604) 171 2747",
        cell: "(670) 152 5262",
        id: IndividualModel.Id(name: "NSS", value: "10 23 29 8003 5"),
        picture: IndividualModel.Picture(
            large:  "https://randomuser.me/api/portraits/men/28.jpg",
            medium: "https://randomuser.me/api/portraits/med/men/28.jpg",
            thumbnail: "https://randomuser.me/api/portraits/thumb/men/28.jpg"
        ),
        nat: "MX"
    )
    
    
    
}
