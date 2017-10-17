//
//  Created by Kandasamy Munusamy on 9/11/15.
//  Copyright © 2017 Kandasamy Munusamy. All rights reserved.
//

import Foundation

struct ForecastDateTime {
  let rawDate: Double

  init(_ date: Double) {
    rawDate = date
  }

  var shortTime: String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "HH:mm"
    let date = Date(timeIntervalSince1970: rawDate)
    return dateFormatter.string(from: date)
  }
}
