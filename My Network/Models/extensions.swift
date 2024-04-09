//
//  extensions.swift
//  My Network
//
//  Created by Moamen Hassaballah on 06/04/2024.
//

import Foundation
import SwiftUI


extension Color {
    public static let mCustomGray = Color(red: 55/255, green: 55/255, blue: 55/255)
    public static let mDarkGreen = Color(red: 30/255, green: 47/255, blue: 40/255)
    public static let mGolden = Color(red: 181/255, green: 154/255, blue: 102/255)
    
}


extension Int {
    func formattedPopulation() -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        
        switch self {
        case 0..<1_000:
            return formatter.string(from: NSNumber(value: self)) ?? "\(self)"
        case 1_000..<1_000_000:
            let thousands = Double(self) / 1_000.0
            return "\(formatter.string(from: NSNumber(value: thousands)) ?? "\(thousands)")K"
        case 1_000_000..<1_000_000_000:
            let millions = Double(self) / 1_000_000.0
            return "\(formatter.string(from: NSNumber(value: millions)) ?? "\(millions)")M"
        default:
            let billions = Double(self) / 1_000_000_000.0
            return "\(formatter.string(from: NSNumber(value: billions)) ?? "\(billions)")B"
        }
    }
}
