//
//  SwiftUIView.swift
//  WeatherApp
//
//  Created by Stevie on 12/23/23.
//

import SwiftUI
struct CityTextView: View {
    @Binding var isNight: Bool
    
    var cityName: String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .semibold, design: .monospaced))
            .foregroundColor(isNight ? .white : .black)
            .padding()
    }
}
