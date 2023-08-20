//
//  Color.swift
//  BeCoin
//
//  Created by André Porto on 18/08/23.
//

import Foundation
import SwiftUI

extension Color {
    
    static let theme = ColorTheme()
    
}

// ADD COLORS TO THE THEME
struct ColorTheme {
    
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let green = Color("GreenColor")
    let red = Color("RedColor")
    let secondaryText = Color("SecondaryTextColor")
}
