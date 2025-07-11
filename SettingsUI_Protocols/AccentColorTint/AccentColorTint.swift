//
//  AccentColorTint.swift
//  SettingsUI_Protocols
//
//  Created by Alexander Löwe on 06.07.25.
//

import SwiftUI

public struct AccentColorTint: Codable, Identifiable, Equatable {
    
    public var id: UUID = UUID()
    
    let titleKey: String
    
    let colorName: String?
    
    let colorHex: String?
    
    public init(titleKey: String, colorName: String) {
        self.titleKey = titleKey
        self.colorName = colorName
        self.colorHex = nil
    }
    
    public init(titleKey: String, colorHex: String) {
        self.titleKey = titleKey
        self.colorHex = colorHex
        self.colorName = nil
    }
    
    public var title: LocalizedStringKey {
        LocalizedStringKey(titleKey)
    }
    
    public var color: Color {
        if let colorName,
           colorHex == nil {
            return Color(colorName, bundle: .SettingsUI)
        }
        else if let colorHex,
                colorName == nil {
            return Color(hex: colorHex) ?? .blue
        }
        return .blue
    }
}


public extension AccentColorTint {
    
    static let blue: AccentColorTint = .init(titleKey: "Blue Accent Color".localizedInFramework, colorName: "AppleBlue")
    
    static let green: AccentColorTint = .init(titleKey: "Green Accent Color".localizedInFramework, colorName: "AppleGreen")
    
    static let red: AccentColorTint = .init(titleKey: "Red Accent Color".localizedInFramework, colorName: "AppleRed")
    
    static let purple: AccentColorTint = .init(titleKey: "Purple Accent Color".localizedInFramework, colorName: "ApplePurple")
    
    static let blush: AccentColorTint = .init(titleKey: "Blush Accent Color".localizedInFramework, colorName: "AppleBlush")
    
    static let cyan: AccentColorTint = .init(titleKey: "Cyan Accent Color".localizedInFramework, colorName: "AppleCyan")
    
    static let indigo: AccentColorTint = .init(titleKey: "Indigo Accent Color".localizedInFramework, colorName: "AppleIndigo")
    
    static let mint: AccentColorTint = .init(titleKey: "Mint Accent Color".localizedInFramework, colorName: "AppleMint")
    
    static let orange: AccentColorTint = .init(titleKey: "Orange Accent Color".localizedInFramework, colorName: "AppleOrange")
    
    static let pink: AccentColorTint = .init(titleKey: "Pink Accent Color".localizedInFramework, colorName: "ApplePink")
    
    static let teal: AccentColorTint = .init(titleKey: "Teal Accent Color".localizedInFramework, colorName: "AppleTeal")
    
    static let yellow: AccentColorTint = .init(titleKey: "Yellow Accent Color".localizedInFramework, colorName: "AppleYellow")
    
    static let allCases: [AccentColorTint] = [
        .red,
        .green,
        .blue,
        .pink,
        .blush,
        .purple,
        .orange,
        .yellow,
        .mint,
        .teal,
        .cyan,
        .indigo,
    ]
    
}



