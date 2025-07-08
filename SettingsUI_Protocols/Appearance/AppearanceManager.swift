//
//  AppearanceManager.swift
//  SettingsUI_Protocols
//
//  Created by Alexander Löwe on 08.07.25.
//

import SwiftUI

public struct AppearanceKey: EnvironmentKey {
    public static var defaultValue: Appearance {
        if let raw = UserDefaults.standard.string(forKey: AppStorageKey.appearance),
           let value = Appearance(rawValue: raw) {
            return value
        }
        return .System
    }
}

public extension EnvironmentValues {
    
    var appearance: Appearance {
        get {
            self[AppearanceKey.self]
        } set {
            UserDefaults.standard.set(newValue.rawValue, forKey: AppStorageKey.appearance)
        }
    }
}
