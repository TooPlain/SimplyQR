//           
//  ColorExt.swift          
//  SimplyQR 
// 
//  Created by TooPlain on 11/10/23.
//

import SwiftUI

extension Color {
    static var random: Color {
        let red = Double.random(in: 0...1)
        let green = Double.random(in: 0...1)
        let blue = Double.random(in: 0...1)
        return Color(red: red, green: green, blue: blue)
    }
}
