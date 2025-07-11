//
//  URLLink.swift
//  SettingsUI_Protocols
//
//  Created by Alexander Löwe on 08.07.25.
//

import SwiftUI

public struct URLLink: Identifiable {
    public let id: UUID
    public let systemImage: String
    public let url: URL?
    public let text: LocalizedStringKey
    public let color: Color
    
    public init(id: UUID, systemImage: String, url: URL?, text: LocalizedStringKey, color: Color) {
        self.id = id
        self.systemImage = systemImage
        self.url = url
        self.text = text
        self.color = color
    }
}
