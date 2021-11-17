//
//  WeatherApp.swift
//  Weather App
//
//  Created by Dessiree Sánchez on 12/11/21.
//

import SwiftUI

@main
struct WeatherApp: App {
    var body: some Scene {
        WindowGroup {
            WeatherView(viewModel: WeatherViewModel(weatherService: WeatherService()))
        }
    }
}
