//
//  Appearance.swift
//  SettingsUI_Protocols
//
//  Created by Alexander Löwe on 08.07.25.
//

import SwiftUI

public enum Appearance: String, CaseIterable, Codable, Identifiable {
    
    public var id: Self { self }
    case Dark
    case Light
    case System
    
    var image: Image {
        switch self {
        case .Dark:
            Image(systemName: "moon.fill")
        case .Light:
            Image(systemName: "sun.max.fill")
        case .System:
            Image(systemName: "circle.lefthalf.filled")
        }
    }
    
    var text: String {
        switch self {
        case .Dark:
            "Appearance Dark Mode".localizedInFramework
        case .Light:
            "Appearance Light Mode".localizedInFramework
        case .System:
            "Appearance System Mode".localizedInFramework
        }
    }
}
