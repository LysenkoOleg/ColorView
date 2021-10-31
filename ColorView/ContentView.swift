//
//  ContentView.swift
//  ColorView
//
//  Created by Олег Лысенко on 28.10.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)
    
    var body: some View {
        ZStack {
            Color.indigo
                .ignoresSafeArea()
            VStack(spacing: 40) {
                ColorView(
                    red: redSliderValue,
                    green: greenSliderValue,
                    blue: blueSliderValue,
                    opacity: 1.0
                )
                VStack {
                    ColorSliderView(
                        sliderValue: $redSliderValue,
                        color: .red
                    )
                    ColorSliderView(
                        sliderValue: $greenSliderValue,
                        color: .green
                    )
                    ColorSliderView(
                        sliderValue: $blueSliderValue,
                        color: .blue
                    )
                }
                .padding(.top)
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ColorSliderView: View {
    @Binding var sliderValue: Double
    let color: Color
    
    var body: some View {
        HStack {
            Text("\(lround(sliderValue))")
                .frame(width: 40, height: 30)
                .foregroundColor(.white)
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .tint(color)
            TextField("", value: $sliderValue, format: .number)
                .frame(width: 45, height: 30)
                .background(.white)
                .cornerRadius(10)
                .keyboardType(.decimalPad)
        }
    }
}

