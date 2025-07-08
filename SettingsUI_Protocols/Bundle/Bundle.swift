//
//  Bundle.swift
//  SettingsUI_Protocols
//
//  Created by Alexander Löwe on 08.07.25.
//

import Foundation

final class SettingsUIBundle {}

extension Bundle {
    static var SettingsUI: Bundle {
        return Bundle(for: SettingsUIBundle.self)
    }
}
