//
//  IndividualModel.swift
//  My Network
//
//  Created by Moamen Hassaballah on 16/04/2024.
//

import Foundation


struct IndividualModel: Codable, Hashable {
    struct Name: Codable, Hashable {
        let title: String
        let first: String
        let last: String
    }

    struct Street: Codable, Hashable {
        let number: Int
        let name: String
    }

    struct Coordinates: Codable, Hashable {
        let latitude: String
        let longitude: String
    }

    struct Timezone: Codable, Hashable {
        let offset: String
        let description: String
    }

    struct Dob: Codable, Hashable {
        let date: String
        let age: Int
    }

    struct Registered: Codable, Hashable {
        let date: String
        let age: Int
    }

    struct Id: Codable, Hashable {
        let name: String
        let value: String?
    }

    struct Picture: Codable, Hashable {
        let large: String
        let medium: String
        let thumbnail: String
    }

    let gender: String
    let name: Name
    let location: Location?
    let email: String
    let login: Login
    let dob: Dob
    let registered: Registered
    let phone: String
    let cell: String
    let id: Id
    let picture: Picture
    let nat: String

    struct Location: Codable, Hashable {
        let street: Street
        let city: String
        let state: String
        let country: String
        let postcode: String?
        let coordinates: Coordinates
        let timezone: Timezone
    }

    struct Login: Codable, Hashable {
        let uuid: String
        let username: String
        let password: String
        let salt: String
        let md5: String
        let sha1: String
        let sha256: String
    }
}
