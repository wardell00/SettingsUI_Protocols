//
//  File.swift
//  SettingsUI
//
//  Created by Alexander Löwe on 02.06.25.
//

import Foundation
import SwiftUI

final class FrameworkBundleLocator {}

extension String {
    var localizedInFramework: String {
        String(localized: String.LocalizationValue(self), bundle: Bundle(for: FrameworkBundleLocator.self))
    }
}


