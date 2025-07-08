//
//  ColorExtensionHex.swift
//  SettingsUI_Protocols
//
//  Created by Alexander Löwe on 08.07.25.
//

import SwiftUI

public extension Color {
    
    init?(hex: String) {
        
        var hexString = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if hexString.hasPrefix("#") {
            hexString.removeFirst()
        }
        guard hexString.count == 6,
              let rgbValue = Int(hexString, radix: 16) else { return nil }
        
        let red = Double((rgbValue >> 16) & 0xFF) / 255
        let green = Double((rgbValue >> 8) & 0xFF) / 255
        let blue = Double(rgbValue & 0xFF) / 255
        
        self = Color(red: red, green: green, blue: blue)
    }
}
