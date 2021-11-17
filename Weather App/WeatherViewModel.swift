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
    @Published var cityName: String = "City Name"
    @Published var temperature: String = "--"
    @Published var weatherDescription: String = "--"
    @Published var weatherIcon: String = defaultIcon
    
    public let weatherService: WeatherService
    init (weatherService: WeatherService) {
        self.weatherService = weatherService
    }
    
    func refresh() {
        weatherService.loadWeatherData { weather in
            DispatchQueue.main.async {
                self.cityName = weather.city
                self.temperature = "\(weather.temperature)°C"
                self.weatherDescription = weather.description.capitalized
                self.weatherIcon = iconMap[weather.iconName] ?? defaultIcon
            }
            
        }
    }
}
