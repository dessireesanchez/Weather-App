//
//  ContentView.swift
//  Weather App
//
//  Created by Dessiree Sánchez on 12/11/21.
//

import SwiftUI

struct WeatherView: View {
    var body: some View {
        VStack {
            Text("Los Angeles")
                .font(.largeTitle)
                .padding()
            Text("25°C")
                .font(.system(size: 70))
                .bold()
            Text ("☀️")
                .font(.largeTitle)
                .padding()
            Text ("sunny")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView()
    }
}
