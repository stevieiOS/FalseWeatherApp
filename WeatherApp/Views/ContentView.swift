//
//  ContentView.swift
//  WeatherApp
//
//  Created by Stevie on 12/22/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var isNight = false
    
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            VStack(spacing: 10) {
                CityTextView(isNight: $isNight, cityName: "Tulsa, OK")
                PrimaryDayView(isNight: $isNight)
                Spacer()
                if isNight {
                    WeatherNights(isNight: $isNight)
                } else {
                    WeatherDays(isNight: $isNight)
                }
                Spacer()
                Button(action: {isNight.toggle()}, label: {
                    ButtonText(isNight: isNight)
                })
                Spacer()
            }
        }
    }
}

struct BackgroundView: View {
    var isNight: Bool
    
    
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? Color.color :  Color.backgroundGradient,  isNight ? .gray : .white]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct PrimaryDayView: View {
    @Binding var isNight: Bool
    
    var body: some View {
        VStack (spacing: 8) {
            Image(systemName: isNight ? "moon.stars" : "sun.rain.fill")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
                .foregroundColor(isNight ? .white : .primary)
                .padding(.bo)
            Text("76°")
                .font(.system(size: 60, weight: .semibold, design: .monospaced))
                .foregroundColor(isNight ? .white : .black)
        }
        .scenePadding()
    }
}
#Preview {
    ContentView()
}











