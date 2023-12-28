//
//  WeatherDayView.swift
//  WeatherApp
//
//  Created by Stevie on 12/23/23.
//

import SwiftUI


struct WeatherDayView: View {
    
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    var isNight: Bool
    
    var body: some View {
        
        VStack {
            Text("\(dayOfWeek)")
                .font(.system(size: 16, weight: .medium, design: .monospaced))
                .foregroundColor(isNight ? .white : .black)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                .foregroundStyle(isNight ? .white : .black)
            
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium
                              , design: .monospaced))
                .foregroundColor(isNight ? .white : .black)
                .shadow(radius: 7.0)
        }
    }
}

struct WeatherDays: View {
    @Binding var isNight: Bool
    
    var body: some View {
        HStack(spacing: 20) {
            WeatherDayView(
                dayOfWeek: "TUE",
                imageName: "cloud.sleet.fill",
                temperature: 42,
                isNight: false            )
            WeatherDayView(
                dayOfWeek: "WED",
                imageName: "sun.snow.fill",
                temperature: 34,
                isNight: false                      )
            WeatherDayView(
                dayOfWeek: "THU",
                imageName: "sun.max.fill",
                temperature: 55,
                isNight: false                      )
            WeatherDayView(
                dayOfWeek: "FRI",
                imageName: "cloud.sun.bolt.fill",
                temperature: 48,
                isNight: false             )
            WeatherDayView(
                dayOfWeek: "SAT",
                imageName: "cloud.sun.fill",
                temperature: 59,
                isNight: false                      )
        }
    }
}


struct WeatherNights: View {
    @Binding var isNight: Bool
    
    var body: some View {
        HStack(spacing: 20) {
            WeatherDayView(
                dayOfWeek: "TUE",
                imageName: "cloud.bolt",
                temperature: 14,
                isNight: true            )
            WeatherDayView(
                dayOfWeek: "WED",
                imageName: "cloud.moon",
                temperature: 27,
                isNight: true                      )
            WeatherDayView(
                dayOfWeek: "THU",
                imageName: "cloud.hail",
                temperature: 5,
                isNight: true                      )
            WeatherDayView(
                dayOfWeek: "FRI",
                imageName: "cloud.fog",
                temperature: 26,
                isNight: true             )
            WeatherDayView(
                dayOfWeek: "SAT",
                imageName: "cloud",
                temperature: 33,
                isNight: true                      )
        }
    }
}
