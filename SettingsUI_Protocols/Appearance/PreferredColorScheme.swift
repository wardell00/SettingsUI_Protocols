//
//  PreferredColorScheme.swift
//  SettingsUI_Protocols
//
//  Created by Alexander Löwe on 08.07.25.
//

import SwiftUI

public struct PreferredColorScheme<Content: View>: View {
    @Environment(SettingsValues.self) private var settings
    let content: Content
    
    public var body: some View {
        switch settings.appearance {
        case .Dark:
            content.preferredColorScheme(.dark)
        case .Light:
            content.preferredColorScheme(.light)
        case .System:
            content
        }
    }
}

public extension View {
    func changeAppearance() -> some View {
        PreferredColorScheme(content: self)
    }
}
