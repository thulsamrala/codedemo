//
//  Created by Kandasamy Munusamy on 9/9/15.
//  Copyright © 2017 Kandasamy Munusamy. All rights reserved.
//

import Foundation

struct Temperature {
  let degrees: String

  init(country: String, openWeatherMapDegrees: Double) {
    if country == "US" {
      degrees = String(TemperatureConverter.kelvinToFahrenheit(openWeatherMapDegrees)) + "\u{f045}"
    } else {
      degrees = String(TemperatureConverter.kelvinToCelsius(openWeatherMapDegrees)) + "\u{f03c}"
    }
  }
}
