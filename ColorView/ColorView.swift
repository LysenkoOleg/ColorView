//
//  ColorView.swift
//  ColorView
//
//  Created by Олег Лысенко on 31.10.2021.
//

import SwiftUI

struct ColorView: View {
    private var red: Double
    private var green: Double
    private var blue: Double
    private var opacity: Double
    
    init(red: Double, green: Double, blue: Double, opacity: Double) {
        self.red = red
        self.green = green
        self.blue = blue
        self.opacity = opacity
    }

    var body: some View {
        Color(red: red/255, green: green/255, blue: blue/255, opacity: opacity)
            .frame(width: 350.0, height: 150.0)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                        .stroke(lineWidth: 4)
                        .foregroundColor(.white)
        )
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: 1.0, green: 1.0, blue: 1.0, opacity: 1.0)
    }
}
