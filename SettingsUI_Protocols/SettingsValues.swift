//
//  SettingsValues.swift
//  SettingsUI_Protocols
//
//  Created by Alexander Löwe on 08.07.25.
//

import SwiftUI

@Observable
public final class SettingsValues {
    
    public var appearance : Appearance {
        didSet {
            UserDefaults.standard.set(appearance.rawValue, forKey: AppStorageKey.appearance)
        }
    }
    
    public var accentColor: AccentColorTint {
        didSet {
            if let data = try? JSONEncoder().encode(accentColor) {
                UserDefaults.standard.set(data, forKey: AppStorageKey.accentColor)
            }
        }
    }
    
    public init() {
        self.appearance = {
            if let raw = UserDefaults.standard.string(forKey: AppStorageKey.appearance),
               let appearance = Appearance(rawValue: raw) {
                return appearance
            }
            else {
                return  .System
            }
        }()
        
        self.accentColor = {
            if let color = UserDefaults.standard.data(forKey: AppStorageKey.accentColor),
               let accentColor = try? JSONDecoder().decode(AccentColorTint.self, from: color) {
                return accentColor
            }
            else {
                return .red
            }
        }()
    }
}
