//
//  AccentColorManager.swift
//  SettingsUI_Protocols
//
//  Created by Alexander Löwe on 06.07.25.
//

import SwiftUI

public struct AccentColorKey: EnvironmentKey {
    
    public static var defaultValue: AccentColorTint {
        
        if let raw = UserDefaults.standard.data(forKey: AppStorageKey.accentColor),
            let value = try? JSONDecoder().decode(AccentColorTint.self, from: raw) {
            return value
        }
        return .blue
    }
}
