//
//  WeatherViewModel.swift
//  Weather App
//
//  Created by Dessiree Sánchez on 16/11/21.
//

import Foundation

private let defaultIcon = "❓"
private let iconMap = [
    "Drizzle": "🌧",
    "Thunderstorm": "⛈",
    "Raim": "🌧",
    "Snow": "❄️",
    "Clear": "☀️",
    "Clouds": "☁️",
]

class WeatherViewModel: ObservableObject {
    @Published var cityname: String = "City Name"
    @Published var temperature: String = "--"
    @Published var weatherDescription: String = "--"
    @Published var weatherIcon: String = ""
}
