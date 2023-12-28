//
//  ButtonModifier.swift
//  WeatherApp
//
//  Created by Stevie on 12/24/23.
//

import SwiftUI

struct ButtonText: View {
    var isNight: Bool
    
    var body: some View {
        Text("Change Day Time")
            .frame(width: 280, height: 50, alignment: .center)
            .background(Color.white)
            .foregroundStyle(.black)
            .font(.system(size: 17, weight: .semibold, design: .monospaced))
            .cornerRadius(15)
            .shadow(radius: 10)
    }
}

#Preview {
    ButtonText(isNight: false)
}
