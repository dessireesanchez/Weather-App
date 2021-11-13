//
//  WeatherService.swift
//  Weather App
//
//  Created by Dessiree Sánchez on 12/11/21.
//
import CoreLocation
import Foundation

public final class WeatherService: NSObject {
    
    private let locationManager = CLLocationManager()
    private let API_KEY = "1f4caa563a4545f6291ff64daabd2b2b"
    private var completionHandler: ((Weather)-> Void)?
}

struct APIResponse: Decodable {
    let name: String
    let main: APIMain
    let weather: [APIWeather]
}

struct APIMain: Decodable {
    let temp: Double
}

struct APIWeather: Decodable {
    let description: String
    let iconName: String
    
    enum CodingKeys: String, CodingKey {
        case description
        case iconName = "main"
    }
}
