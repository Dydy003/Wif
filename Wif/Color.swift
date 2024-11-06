//
//  Color.swift
//  Wif
//
//  Created by Dylan Caetano on 05/11/2024.
//

import SwiftUI

extension Color {
    static var colorY = Color("ColorYellow")
    static var colorB = Color("ColorBlue")
    static var colorT = Color("ColorText")
    static var gradient = LinearGradient(colors: [Color(colorY), Color(colorB)], startPoint: .bottomLeading, endPoint: .topTrailing)
}
