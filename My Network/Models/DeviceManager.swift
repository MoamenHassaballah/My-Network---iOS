//
//  DeviceManager.swift
//  My Network
//
//  Created by Moamen Hassaballah on 09/04/2024.
//

import Foundation
import UIKit

class DeviceManager : ObservableObject {
    
    @Published var orientation: UIDeviceOrientation = UIDevice.current.orientation
    
    
    func isiPad() -> Bool {
            return UIDevice.current.userInterfaceIdiom == .pad
    }
    
    
    func countryFlagFontSize() -> CGFloat{
        return isiPad() ? 50 : 30
    }
    
    func countryFlagDimentions() -> CGFloat{
        return isiPad() ? 80 : 50
    }
    
    
    
    
        
    init() {
        NotificationCenter.default.addObserver(self, selector: #selector(deviceOrientationDidChange), name: UIDevice.orientationDidChangeNotification, object: nil)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self, name: UIDevice.orientationDidChangeNotification, object: nil)
    }
    
    @objc private func deviceOrientationDidChange() {
        DispatchQueue.main.async {
            self.orientation = UIDevice.current.orientation
        }
    }
    
    
}
